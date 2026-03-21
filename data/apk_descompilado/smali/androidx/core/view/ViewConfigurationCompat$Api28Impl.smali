.class public abstract Landroidx/core/view/ViewConfigurationCompat$Api28Impl;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api28Impl"
.end annotation


# direct methods
.method public static getScaledHoverSlop(Landroid/view/ViewConfiguration;)I
    .locals 1
    .param p0, "viewConfiguration"    # Landroid/view/ViewConfiguration;

    .line 315
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledHoverSlop()I

    move-result v0

    return v0
.end method

.method public static shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;)Z
    .locals 1
    .param p0, "viewConfiguration"    # Landroid/view/ViewConfiguration;

    .line 321
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->shouldShowMenuShortcutsWhenKeyboardPresent()Z

    move-result v0

    return v0
.end method
