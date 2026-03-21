.class public Landroidx/core/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.kt"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pools.kt\nandroidx/core/util/Pools$SimplePool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
.end annotation


# instance fields
.field public final pool:[Ljava/lang/Object;

.field public poolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxPoolSize"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    nop

    .line 81
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 82
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    .line 83
    nop

    .line 71
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 81
    .local v0, "$i$a$-require-Pools$SimplePool$1":I
    nop

    .end local v0    # "$i$a$-require-Pools$SimplePool$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4

    .line 86
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 87
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    add-int/lit8 v0, v0, -0x1

    .line 89
    .local v0, "lastPooledIndex":I
    iget-object v2, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    aget-object v2, v2, v0

    const-string v3, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .local v2, "instance":Ljava/lang/Object;
    iget-object v3, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 91
    iget v1, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    .line 92
    return-object v2

    .line 94
    .end local v0    # "lastPooledIndex":I
    .end local v2    # "instance":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public final isInPool(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "instance"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 109
    iget-object v2, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 110
    const/4 v1, 0x1

    return v1

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 113
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Landroidx/core/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    iget-object v1, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Landroidx/core/util/Pools$SimplePool;->pool:[Ljava/lang/Object;

    iget v1, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    aput-object p1, v0, v1

    .line 101
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->poolSize:I

    .line 102
    return v1

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 98
    .local v0, "$i$a$-check-Pools$SimplePool$release$1":I
    nop

    .end local v0    # "$i$a$-check-Pools$SimplePool$release$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in the pool!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
