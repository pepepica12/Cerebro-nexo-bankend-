.class public abstract Landroidx/core/view/DisplayCutoutCompat$Api28Impl;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api28Impl"
.end annotation


# direct methods
.method public static createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;
    .locals 1
    .param p0, "safeInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/DisplayCutout;"
        }
    .end annotation

    .line 228
    .local p1, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Landroid/view/DisplayCutout;

    invoke-direct {v0, p0, p1}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    return-object v0
.end method

.method public static getBoundingRects(Landroid/view/DisplayCutout;)Ljava/util/List;
    .locals 1
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSafeInsetBottom(Landroid/view/DisplayCutout;)I
    .locals 1
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 238
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    return v0
.end method

.method public static getSafeInsetLeft(Landroid/view/DisplayCutout;)I
    .locals 1
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 243
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    return v0
.end method

.method public static getSafeInsetRight(Landroid/view/DisplayCutout;)I
    .locals 1
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 248
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    return v0
.end method

.method public static getSafeInsetTop(Landroid/view/DisplayCutout;)I
    .locals 1
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 233
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    return v0
.end method
