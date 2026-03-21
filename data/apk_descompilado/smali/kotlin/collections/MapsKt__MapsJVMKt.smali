.class public abstract Lkotlin/collections/MapsKt__MapsJVMKt;
.super Lkotlin/collections/MapsKt__MapWithDefaultKt;
.source "MapsJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1#2:158\n*E\n"
.end annotation


# direct methods
.method public static build(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "builder"    # Ljava/util/Map;

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p0

    check-cast v0, Lkotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static createMapBuilder(I)Ljava/util/Map;
    .locals 1
    .param p0, "capacity"    # I

    .line 51
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder;-><init>(I)V

    return-object v0
.end method

.method public static final mapCapacity(I)I
    .locals 2
    .param p0, "expectedSize"    # I

    .line 147
    nop

    .line 150
    if-gez p0, :cond_0

    move v0, p0

    goto :goto_0

    .line 151
    :cond_0
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 154
    :cond_2
    const v0, 0x7fffffff

    .line 155
    :goto_0
    return v0
.end method

.method public static final mapOf(Lkotlin/Pair;)Ljava/util/Map;
    .locals 2
    .param p0, "pair"    # Lkotlin/Pair;

    const-string v0, "pair"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "singletonMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toSingletonMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p0, "$this$toSingletonMap"    # Ljava/util/Map;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    .local v0, "$this$toSingletonMap_u24lambda_u240":Ljava/util/Map$Entry;
    const/4 v1, 0x0

    .line 139
    .local v1, "$i$a$-with-MapsKt__MapsJVMKt$toSingletonMap$1":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .end local v0    # "$this$toSingletonMap_u24lambda_u240":Ljava/util/Map$Entry;
    .end local v1    # "$i$a$-with-MapsKt__MapsJVMKt$toSingletonMap$1":I
    const-string v1, "with(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
