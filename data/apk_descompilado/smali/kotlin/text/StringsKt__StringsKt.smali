.class public abstract Lkotlin/text/StringsKt__StringsKt;
.super Lkotlin/text/StringsKt__StringsJVMKt;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1580:1\n78#1,22:1581\n112#1,5:1603\n129#1,5:1608\n78#1,22:1613\n106#1:1635\n78#1,22:1636\n112#1,5:1658\n123#1:1663\n112#1,5:1664\n129#1,5:1669\n140#1:1674\n129#1,5:1675\n78#1,22:1680\n112#1,5:1702\n129#1,5:1707\n1069#2,2:1712\n13050#3,2:1714\n13050#3,2:1716\n295#4,2:1718\n295#4,2:1720\n1563#4:1723\n1634#4,3:1724\n1563#4:1727\n1634#4,3:1728\n1#5:1722\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n106#1:1581,22\n123#1:1603,5\n140#1:1608,5\n145#1:1613,22\n150#1:1635\n150#1:1636,22\n155#1:1658,5\n160#1:1663\n160#1:1664,5\n165#1:1669,5\n170#1:1674\n170#1:1675,5\n175#1:1680,22\n186#1:1702,5\n197#1:1707,5\n310#1:1712,2\n967#1:1714,2\n991#1:1716,2\n1030#1:1718,2\n1036#1:1720,2\n1401#1:1723\n1401#1:1724,3\n1427#1:1727\n1427#1:1728,3\n*E\n"
.end annotation


# direct methods
.method public static final getLastIndex(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "$this$lastIndex"    # Ljava/lang/CharSequence;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static final indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 9
    .param p0, "$this$indexOf"    # Ljava/lang/CharSequence;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    if-nez p3, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1132
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    goto :goto_1

    .line 1130
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    .end local p0    # "$this$indexOf":Ljava/lang/CharSequence;
    .end local p1    # "string":Ljava/lang/String;
    .end local p2    # "startIndex":I
    .end local p3    # "ignoreCase":Z
    .local v1, "$this$indexOf":Ljava/lang/CharSequence;
    .local v2, "string":Ljava/lang/String;
    .local v3, "startIndex":I
    .local v5, "ignoreCase":Z
    invoke-static/range {v1 .. v8}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result v0

    .line 1129
    :goto_1
    return v0
.end method

.method public static final indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .locals 15
    .param p0, "$this$indexOf"    # Ljava/lang/CharSequence;
    .param p1, "other"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "ignoreCase"    # Z
    .param p5, "last"    # Z

    .line 1000
    move-object/from16 v0, p1

    move/from16 v6, p2

    move/from16 v7, p3

    const/4 v1, 0x0

    if-nez p5, :cond_0

    .line 1001
    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-static {v6, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v7, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    goto :goto_0

    .line 1003
    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v6, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result v2

    invoke-static {v7, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt___RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v2

    .line 1000
    :goto_0
    move-object v8, v2

    .line 1005
    .local v8, "indices":Lkotlin/ranges/IntProgression;
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1006
    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    .local v1, "index":I
    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_1

    if-le v1, v2, :cond_2

    :cond_1
    if-gez v3, :cond_8

    if-gt v2, v1, :cond_8

    .line 1007
    :cond_2
    move v12, v1

    .end local v1    # "index":I
    .local v12, "index":I
    :goto_1
    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    move-object v11, p0

    check-cast v11, Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v10, 0x0

    move/from16 v14, p4

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt__StringsJVMKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1008
    return v12

    .line 1006
    :cond_3
    if-eq v12, v2, :cond_8

    add-int/2addr v12, v3

    goto :goto_1

    .line 1011
    .end local v12    # "index":I
    :cond_4
    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    .restart local v1    # "index":I
    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v10

    if-lez v10, :cond_5

    if-le v1, v9, :cond_6

    :cond_5
    if-gez v10, :cond_8

    if-gt v9, v1, :cond_8

    .line 1012
    :cond_6
    move v3, v1

    .end local v1    # "index":I
    .local v3, "index":I
    :goto_2
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v2, p0

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1013
    return v3

    .line 1011
    :cond_7
    if-eq v3, v9, :cond_8

    add-int/2addr v3, v10

    move-object/from16 v0, p1

    goto :goto_2

    .line 1016
    .end local v3    # "index":I
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic indexOf$StringsKt__StringsKt$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I
    .locals 6

    .line 999
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$StringsKt__StringsKt(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    return p0
.end method

.method public static final regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .locals 4
    .param p0, "$this$regionMatchesImpl"    # Ljava/lang/CharSequence;
    .param p1, "thisOffset"    # I
    .param p2, "other"    # Ljava/lang/CharSequence;
    .param p3, "otherOffset"    # I
    .param p4, "length"    # I
    .param p5, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x0

    if-ltz p3, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_1

    :cond_0
    goto :goto_1

    .line 852
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 853
    add-int v2, p1, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 854
    return v0

    .line 852
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 856
    .end local v1    # "index":I
    const/4 v0, 0x1

    return v0

    .line 849
    :goto_1
    return v0
.end method
