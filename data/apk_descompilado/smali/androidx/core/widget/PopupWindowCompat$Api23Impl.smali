.class public abstract Landroidx/core/widget/PopupWindowCompat$Api23Impl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api23Impl"
.end annotation


# direct methods
.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .line 211
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    move-result v0

    return v0
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .line 221
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWindowLayoutType()I

    move-result v0

    return v0
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "overlapAnchor"    # Z

    .line 206
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 207
    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .line 216
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 217
    return-void
.end method
