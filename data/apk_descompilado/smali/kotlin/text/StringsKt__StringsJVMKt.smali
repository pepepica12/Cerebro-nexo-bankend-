.class public abstract Lkotlin/text/StringsKt__StringsJVMKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsKt;
.source "StringsJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,885:1\n1179#2,2:886\n1#3:888\n*S KotlinDebug\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n*L\n73#1:886,2\n*E\n"
.end annotation


# direct methods
.method public static final regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z
    .locals 2
    .param p0, "$this$regionMatches"    # Ljava/lang/String;
    .param p1, "thisOffset"    # I
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "otherOffset"    # I
    .param p4, "length"    # I
    .param p5, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    if-nez p5, :cond_0

    .line 717
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    move-object v1, p2

    move p2, p1

    move p1, p5

    move p5, p4

    move p4, p3

    move-object p3, v1

    goto :goto_0

    .line 719
    :cond_0
    move-object v1, p2

    move p2, p1

    move p1, p5

    move p5, p4

    move p4, p3

    move-object p3, v1

    .local p1, "ignoreCase":Z
    .local p2, "thisOffset":I
    .local p3, "other":Ljava/lang/String;
    .local p4, "otherOffset":I
    .local p5, "length":I
    invoke-virtual/range {p0 .. p5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "$this$replace"    # Ljava/lang/String;
    .param p1, "oldValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object v0, p0

    .local v0, "$this$replace_u24lambda_u241":Ljava/lang/String;
    const/4 v1, 0x0

    .line 88
    .local v1, "$i$a$-run-StringsKt__StringsJVMKt$replace$2":I
    const/4 v2, 0x0

    invoke-static {v0, p1, v2, p3}, Lkotlin/text/StringsKt__StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v2

    .line 90
    .local v2, "occurrenceIndex":I
    if-gez v2, :cond_0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 93
    .local v3, "oldValueLength":I
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 94
    .local v4, "searchStep":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 95
    .local v5, "newLengthHint":I
    if-ltz v5, :cond_3

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 100
    .local v7, "i":I
    :cond_1
    invoke-virtual {v6, v0, v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int v7, v2, v3

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 103
    add-int v8, v2, v4

    invoke-static {v0, p1, v8, p3}, Lkotlin/text/StringsKt__StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v2

    .line 104
    if-gtz v2, :cond_1

    .line 105
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "toString(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    .line 95
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "i":I
    :cond_3
    new-instance v6, Ljava/lang/OutOfMemoryError;

    invoke-direct {v6}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v6
.end method

.method public static synthetic replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 86
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
