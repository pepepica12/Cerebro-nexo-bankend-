.class public abstract Lkotlin/collections/CollectionsKt__CollectionsKt;
.super Lkotlin/collections/CollectionsKt__CollectionsJVMKt;
.source "Collections.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collections.kt\nkotlin/collections/CollectionsKt__CollectionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,527:1\n1#2:528\n*E\n"
.end annotation


# direct methods
.method public static final asCollection([Ljava/lang/Object;Z)Ljava/util/Collection;
    .locals 1
    .param p0, "$this$asCollection"    # [Ljava/lang/Object;
    .param p1, "isVarargs"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lkotlin/collections/ArrayAsCollection;

    invoke-direct {v0, p0, p1}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static synthetic asCollection$default([Ljava/lang/Object;ZILjava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 59
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->asCollection([Ljava/lang/Object;Z)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static final emptyList()Ljava/util/List;
    .locals 1

    .line 75
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object v0
.end method

.method public static varargs listOf([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "elements"    # [Ljava/lang/Object;

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    array-length v0, p0

    if-lez v0, :cond_0

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "$this$optimizeReadOnlyList"    # Ljava/util/List;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    move-object v0, p0

    goto :goto_0

    .line 311
    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static throwIndexOverflow()V
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
