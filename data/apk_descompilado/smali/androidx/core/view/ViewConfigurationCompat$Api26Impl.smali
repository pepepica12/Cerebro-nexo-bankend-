.class public abstract Landroidx/core/view/ViewConfigurationCompat$Api26Impl;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api26Impl"
.end annotation


# direct methods
.method public static getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;)F
    .locals 1
    .param p0, "viewConfiguration"    # Landroid/view/ViewConfiguration;

    .line 298
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method public static getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;)F
    .locals 1
    .param p0, "viewConfiguration"    # Landroid/view/ViewConfiguration;

    .line 303
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    return v0
.end method
