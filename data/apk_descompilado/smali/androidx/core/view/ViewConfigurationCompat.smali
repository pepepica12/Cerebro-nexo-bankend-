.class public abstract Landroidx/core/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewConfigurationCompat$Api26Impl;,
        Landroidx/core/view/ViewConfigurationCompat$Api28Impl;,
        Landroidx/core/view/ViewConfigurationCompat$Api34Impl;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 56
    nop

    .line 64
    return-void
.end method

.method public static getCompatFlingVelocityThreshold(Landroid/content/res/Resources;ILandroidx/core/util/Supplier;I)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "platformResId"    # I
    .param p3, "noFlingThreshold"    # I

    .line 390
    .local p2, "defaultThresholdSupplier":Landroidx/core/util/Supplier;, "Landroidx/core/util/Supplier<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    .line 400
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 403
    .local v0, "threshold":I
    if-gez v0, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 398
    .end local v0    # "threshold":I
    :pswitch_0
    return p3

    .line 394
    :pswitch_1
    invoke-interface {p2}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .line 367
    const-string v0, "android"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPreApi34MaximumFlingVelocityResId(Landroid/content/res/Resources;II)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "source"    # I
    .param p2, "axis"    # I

    .line 351
    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_0

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_0

    .line 352
    const-string v0, "config_viewMaxRotaryEncoderFlingVelocity"

    const-string v1, "dimen"

    invoke-static {p0, v0, v1}, Landroidx/core/view/ViewConfigurationCompat;->getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 355
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getPreApi34MinimumFlingVelocityResId(Landroid/content/res/Resources;II)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "source"    # I
    .param p2, "axis"    # I

    .line 359
    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_0

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_0

    .line 360
    const-string v0, "config_viewMinRotaryEncoderFlingVelocity"

    const-string v1, "dimen"

    invoke-static {p0, v0, v1}, Landroidx/core/view/ViewConfigurationCompat;->getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 363
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 1
    .param p0, "config"    # Landroid/view/ViewConfiguration;
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    nop

    .line 99
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api26Impl;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;)F

    move-result v0

    return v0
.end method

.method public static getScaledMaximumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/view/ViewConfiguration;
    .param p2, "inputDeviceId"    # I
    .param p3, "axis"    # I
    .param p4, "source"    # I

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 272
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat$Api34Impl;->getScaledMaximumFlingVelocity(Landroid/view/ViewConfiguration;III)I

    move-result v0

    return v0

    .line 275
    :cond_0
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat;->isInputDeviceInfoValid(III)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1

    .line 276
    return v1

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 280
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 282
    invoke-static {v0, p4, p3}, Landroidx/core/view/ViewConfigurationCompat;->getPreApi34MaximumFlingVelocityResId(Landroid/content/res/Resources;II)I

    move-result v2

    .line 283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/core/view/ViewConfigurationCompat$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroidx/core/view/ViewConfigurationCompat$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewConfiguration;)V

    .line 280
    invoke-static {v0, v2, v3, v1}, Landroidx/core/view/ViewConfigurationCompat;->getCompatFlingVelocityThreshold(Landroid/content/res/Resources;ILandroidx/core/util/Supplier;I)I

    move-result v1

    return v1
.end method

.method public static getScaledMinimumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/view/ViewConfiguration;
    .param p2, "inputDeviceId"    # I
    .param p3, "axis"    # I
    .param p4, "source"    # I

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 239
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat$Api34Impl;->getScaledMinimumFlingVelocity(Landroid/view/ViewConfiguration;III)I

    move-result v0

    return v0

    .line 242
    :cond_0
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat;->isInputDeviceInfoValid(III)Z

    move-result v0

    const v1, 0x7fffffff

    if-nez v0, :cond_1

    .line 243
    return v1

    .line 246
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 247
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 249
    invoke-static {v0, p4, p3}, Landroidx/core/view/ViewConfigurationCompat;->getPreApi34MinimumFlingVelocityResId(Landroid/content/res/Resources;II)I

    move-result v2

    .line 250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/core/view/ViewConfigurationCompat$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Landroidx/core/view/ViewConfigurationCompat$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewConfiguration;)V

    .line 247
    invoke-static {v0, v2, v3, v1}, Landroidx/core/view/ViewConfigurationCompat;->getCompatFlingVelocityThreshold(Landroid/content/res/Resources;ILandroidx/core/util/Supplier;I)I

    move-result v1

    return v1
.end method

.method public static getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 1
    .param p0, "config"    # Landroid/view/ViewConfiguration;
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    nop

    .line 116
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api26Impl;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;)F

    move-result v0

    return v0
.end method

.method public static isInputDeviceInfoValid(III)Z
    .locals 2
    .param p0, "id"    # I
    .param p1, "axis"    # I
    .param p2, "source"    # I

    .line 371
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 372
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z
    .locals 3
    .param p0, "config"    # Landroid/view/ViewConfiguration;
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 161
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api28Impl;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 165
    const-string v1, "config_showMenuShortcutsWhenKeyboardPresent"

    const-string v2, "bool"

    invoke-static {v0, v1, v2}, Landroidx/core/view/ViewConfigurationCompat;->getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 166
    .local v1, "platformResId":I
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
