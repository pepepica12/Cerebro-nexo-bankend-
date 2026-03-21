.class public abstract Lkotlin/ranges/RangesKt___RangesKt;
.super Lkotlin/ranges/RangesKt__RangesKt;
.source "_Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1572:1\n1#2:1573\n*E\n"
.end annotation


# direct methods
.method public static coerceAtLeast(II)I
    .locals 1
    .param p0, "$this$coerceAtLeast"    # I
    .param p1, "minimumValue"    # I

    .line 1279
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static coerceAtMost(II)I
    .locals 1
    .param p0, "$this$coerceAtMost"    # I
    .param p1, "maximumValue"    # I

    .line 1356
    if-le p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static downTo(II)Lkotlin/ranges/IntProgression;
    .locals 2
    .param p0, "$this$downTo"    # I
    .param p1, "to"    # I

    .line 835
    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object v0

    return-object v0
.end method
