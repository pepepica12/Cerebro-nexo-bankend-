.class public abstract Lkotlin/collections/builders/ListBuilderKt;
.super Ljava/lang/Object;
.source "ListBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,722:1\n1#2:723\n*E\n"
.end annotation


# direct methods
.method public static final arrayOfUninitializedElements(I)[Ljava/lang/Object;
    .locals 2
    .param p0, "size"    # I

    .line 620
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 622
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0

    .line 723
    :cond_1
    const/4 v0, 0x0

    .line 620
    .local v0, "$i$a$-require-ListBuilderKt$arrayOfUninitializedElements$1":I
    nop

    .end local v0    # "$i$a$-require-ListBuilderKt$arrayOfUninitializedElements$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be non-negative."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .param p0, "$this$copyOfUninitializedElements"    # [Ljava/lang/Object;
    .param p1, "newSize"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final resetAt([Ljava/lang/Object;I)V
    .locals 1
    .param p0, "$this$resetAt"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    const/4 v0, 0x0

    aput-object v0, p0, p1

    .line 672
    return-void
.end method

.method public static final resetRange([Ljava/lang/Object;II)V
    .locals 1
    .param p0, "$this$resetRange"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    move v0, p1

    .local v0, "index":I
    :goto_0
    if-ge v0, p2, :cond_0

    invoke-static {p0, v0}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
