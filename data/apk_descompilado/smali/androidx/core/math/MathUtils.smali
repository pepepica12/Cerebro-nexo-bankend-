.class public abstract Landroidx/core/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 261
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 262
    return p1

    .line 263
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    .line 264
    return p2

    .line 266
    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 303
    if-ge p0, p1, :cond_0

    .line 304
    return p1

    .line 305
    :cond_0
    if-le p0, p2, :cond_1

    .line 306
    return p2

    .line 308
    :cond_1
    return p0
.end method
