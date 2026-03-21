.class public Lcom/termux/x11/Prefs;
.super Lcom/termux/x11/LoriePreferences$PrefsProto;
.source "Prefs.java"


# instance fields
.field public final PIP:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final Reseed:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final additionalKbdVisible:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final adjustHeightForEK:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final adjustResolution:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final backButtonAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final capturedPointerSpeedFactor:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

.field public final clipboardEnable:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final dexMetaKeyCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final displayResolutionCustom:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

.field public final displayResolutionExact:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final displayScale:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

.field public final displayStretch:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final enforceCharBasedInput:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

.field public final filterOutWinkey:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final forceOrientation:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final hardwareKbdScancodesWorkaround:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final hideCutout:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final keepScreenOn:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final keys:Ljava/util/HashMap;

.field public final mediaKeysAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final notificationButton0Action:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final notificationButton1Action:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final notificationTapAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final opacityEKBar:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

.field public final pauseKeyInterceptingWithEsc:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final pointerCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final preferScancodes:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final scaleTouchpad:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final showAdditionalKbd:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final showIMEWhileExternalConnected:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final showStylusClickOverride:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final storeSecondaryDisplayPreferencesSeparately:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final stylusButtonContactModifierMode:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final stylusIsMouse:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final swipeDownAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final swipeUpAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final tapToMove:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final transformCapturedPointer:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final useTermuxEKBarBehaviour:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

.field public final volumeDownAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

.field public final volumeUpAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0, p1}, Lcom/termux/x11/LoriePreferences$PrefsProto;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v4, Lcom/termux/x11/R$array;->displayResolutionVariants:I

    sget v5, Lcom/termux/x11/R$array;->displayResolutionVariants:I

    const-string v2, "displayResolutionMode"

    const-string v3, "native"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v7, v1

    iput-object v0, v7, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 8
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    const-string v1, "displayScale"

    const/16 v2, 0x64

    invoke-direct {v0, p0, v1, v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;I)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->displayScale:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    .line 9
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->displayResolution:I

    sget v11, Lcom/termux/x11/R$array;->displayResolution:I

    const-string v8, "displayResolutionExact"

    const-string v9, "1280x1024"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->displayResolutionExact:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 10
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    const-string v1, "displayResolutionCustom"

    const-string v3, "1280x1024"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->displayResolutionCustom:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    .line 11
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "adjustResolution"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->adjustResolution:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 12
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "displayStretch"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->displayStretch:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 13
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "Reseed"

    const/4 v4, 0x1

    invoke-direct {v0, p0, v1, v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->Reseed:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 14
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "PIP"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->PIP:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 15
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "fullscreen"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 16
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->forceOrientationVariants:I

    sget v11, Lcom/termux/x11/R$array;->forceOrientationVariants:I

    const-string v8, "forceOrientation"

    const-string v9, "auto"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->forceOrientation:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 17
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "hideCutout"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->hideCutout:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 18
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "keepScreenOn"

    invoke-direct {v0, p0, v1, v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->keepScreenOn:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 19
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->touchscreenInputModesEntries:I

    sget v11, Lcom/termux/x11/R$array;->touchscreenInputModesValues:I

    const-string v8, "touchMode"

    const-string v9, "1"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 20
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "scaleTouchpad"

    invoke-direct {v0, p0, v1, v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->scaleTouchpad:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 21
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "showStylusClickOverride"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->showStylusClickOverride:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 22
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "stylusIsMouse"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->stylusIsMouse:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 23
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "stylusButtonContactModifierMode"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->stylusButtonContactModifierMode:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 24
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "showMouseHelper"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 25
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "pointerCapture"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->pointerCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 26
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->transformCapturedPointerEntries:I

    sget v11, Lcom/termux/x11/R$array;->transformCapturedPointerValues:I

    const-string v8, "transformCapturedPointer"

    const-string v9, "no"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->transformCapturedPointer:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 27
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    const-string v1, "capturedPointerSpeedFactor"

    invoke-direct {v0, p0, v1, v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;I)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->capturedPointerSpeedFactor:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    .line 28
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "tapToMove"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->tapToMove:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 29
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "showAdditionalKbd"

    invoke-direct {v0, p0, v1, v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->showAdditionalKbd:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 30
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "additionalKbdVisible"

    invoke-direct {v0, p0, v1, v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->additionalKbdVisible:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 31
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "showIMEWhileExternalConnected"

    invoke-direct {v0, p0, v1, v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->showIMEWhileExternalConnected:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 32
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "preferScancodes"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->preferScancodes:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 33
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "hardwareKbdScancodesWorkaround"

    invoke-direct {v0, p0, v1, v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->hardwareKbdScancodesWorkaround:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 34
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "dexMetaKeyCapture"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->dexMetaKeyCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 35
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "enableAccessibilityServiceAutomatically"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 36
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "pauseKeyInterceptingWithEsc"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->pauseKeyInterceptingWithEsc:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 37
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "filterOutWinkey"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->filterOutWinkey:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 38
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "enforceCharBasedInput"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->enforceCharBasedInput:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 39
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "clipboardEnable"

    invoke-direct {v0, p0, v1, v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->clipboardEnable:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 40
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "storeSecondaryDisplayPreferencesSeparately"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->storeSecondaryDisplayPreferencesSeparately:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 41
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "adjustHeightForEK"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->adjustHeightForEK:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 42
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    const-string v1, "useTermuxEKBarBehaviour"

    invoke-direct {v0, p0, v1, v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Z)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->useTermuxEKBarBehaviour:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    .line 43
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    const-string v1, "opacityEKBar"

    invoke-direct {v0, p0, v1, v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;I)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->opacityEKBar:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    .line 44
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->userActionsValues:I

    sget v11, Lcom/termux/x11/R$array;->userActionsValues:I

    const-string v8, "swipeUpAction"

    const-string v9, "no action"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->swipeUpAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 45
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->userActionsValues:I

    sget v11, Lcom/termux/x11/R$array;->userActionsValues:I

    const-string v8, "swipeDownAction"

    const-string v9, "toggle additional key bar"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->swipeDownAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 46
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->userActionsVolumeUpValues:I

    sget v11, Lcom/termux/x11/R$array;->userActionsVolumeUpValues:I

    const-string v8, "volumeUpAction"

    const-string v9, "no action"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->volumeUpAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 47
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->userActionsVolumeDownValues:I

    sget v11, Lcom/termux/x11/R$array;->userActionsVolumeDownValues:I

    const-string v8, "volumeDownAction"

    const-string v9, "no action"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->volumeDownAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 48
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->userActionsValues:I

    sget v11, Lcom/termux/x11/R$array;->userActionsValues:I

    const-string v8, "backButtonAction"

    const-string v9, "toggle soft keyboard"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->backButtonAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 49
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->userActionsValues:I

    sget v11, Lcom/termux/x11/R$array;->userActionsValues:I

    const-string v8, "notificationTapAction"

    const-string v9, "open preferences"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->notificationTapAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 50
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->userActionsValues:I

    sget v11, Lcom/termux/x11/R$array;->userActionsValues:I

    const-string v8, "notificationButton0Action"

    const-string v9, "open preferences"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->notificationButton0Action:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 51
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->userActionsValues:I

    sget v11, Lcom/termux/x11/R$array;->userActionsValues:I

    const-string v8, "notificationButton1Action"

    const-string v9, "exit"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->notificationButton1Action:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 52
    new-instance v6, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    sget v10, Lcom/termux/x11/R$array;->userActionsMediaKeyValues:I

    sget v11, Lcom/termux/x11/R$array;->userActionsMediaKeyValues:I

    const-string v8, "mediaKeysAction"

    const-string v9, "no action"

    invoke-direct/range {v6 .. v11}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v7, Lcom/termux/x11/Prefs;->mediaKeysAction:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 53
    new-instance v0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    const-string v1, "extra_keys_config"

    const-string v2, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\',\'PREFERENCES\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\',\'KEYBOARD\']]"

    invoke-direct {v0, p0, v1, v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;-><init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->extra_keys_config:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    .line 54
    new-instance v0, Lcom/termux/x11/Prefs$1;

    invoke-direct {v0, p0}, Lcom/termux/x11/Prefs$1;-><init>(Lcom/termux/x11/Prefs;)V

    iput-object v0, v7, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    .line 106
    return-void
.end method
