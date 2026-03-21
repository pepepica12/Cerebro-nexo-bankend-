.class public Lcom/termux/x11/input/TouchInputHandler;
.super Ljava/lang/Object;
.source "TouchInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/input/TouchInputHandler$StylusListener;,
        Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;,
        Lcom/termux/x11/input/TouchInputHandler$GestureListener;,
        Lcom/termux/x11/input/TouchInputHandler$DexListener;
    }
.end annotation


# static fields
.field public static STYLUS_INPUT_HELPER_MODE:I

.field public static capturedPointerTransformation:I

.field public static final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public static mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public static mDisplayRotation:I


# instance fields
.field public backButtonAction:Ljava/util/function/BiConsumer;

.field public final buttons:[[I

.field public currentBS:I

.field public keyIntercepting:Z

.field public final mActivity:Lcom/termux/x11/MainActivity;

.field public final mDexListener:Lcom/termux/x11/input/TouchInputHandler$DexListener;

.field public final mHMListener:Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;

.field public final mInjector:Lcom/termux/x11/input/InputEventSender;

.field public mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

.field public mIsDragging:Z

.field public final mMetrics:Landroid/util/DisplayMetrics;

.field public final mRenderData:Lcom/termux/x11/input/RenderData;

.field public final mScroller:Landroid/view/GestureDetector;

.field public final mStylusListener:Lcom/termux/x11/input/TouchInputHandler$StylusListener;

.field public mSuppressCursorMovement:Z

.field public mSwipeCompleted:Z

.field public final mSwipePinchDetector:Lcom/termux/x11/input/SwipeDetector;

.field public final mSwipeThreshold:F

.field public final mTapDetector:Lcom/termux/x11/input/TapGestureDetector;

.field public mTotalMotionY:F

.field public final mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

.field public mediaKeysAction:Ljava/util/function/BiConsumer;

.field public final noAction:Ljava/util/function/BiConsumer;

.field public savedBS:I

.field public swipeDownAction:Ljava/util/function/BiConsumer;

.field public swipeUpAction:Ljava/util/function/BiConsumer;

.field public volumeDownAction:Ljava/util/function/BiConsumer;

.field public volumeUpAction:Ljava/util/function/BiConsumer;


# direct methods
.method public static synthetic $r8$lambda$0nZo6QZKSq_MpKWWlE3sqn9jbWc(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$7(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1byAMNIPAYirlnzwgpcTef0Qq_Q(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$9(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3H1GD_hoSOYdEgfYGFn1Y9p9IAo(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$6(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ygirj7rz6l6M3Fv8b0cjqTdAWHI(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$3(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YphdrxFHyKxNIfdL4aM1yxOHZ9E(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$2(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ajfyRcZbZ_CVALsUYNXxMHQ3zP8(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$5(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cDNdkgglUzn6ABhp24Wgz6XYngI(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$4(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUtqzGvI_-1YdmzQJmnk9I_I7no(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/input/TouchInputHandler;->lambda$new$0(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jSnzpDysBfXonwu_a8cBoI_yCuQ(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/InputDevice;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$refreshInputDevices$1(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/InputDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vurhVBp_lY2tafs655KL5Y741cA(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$8(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wkmElqO_6GjitAqJB5QRtxpi_fY(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->lambda$extractUserActionFromPreferences$10(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x1

    sput v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 136
    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$1;

    invoke-direct {v0}, Lcom/termux/x11/input/TouchInputHandler$1;-><init>()V

    sput-object v0, Lcom/termux/x11/input/TouchInputHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 153
    const/4 v0, 0x0

    sput v0, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    return-void
.end method

.method public constructor <init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/InputEventSender;)V
    .locals 2
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "injector"    # Lcom/termux/x11/input/InputEventSender;

    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/termux/x11/input/TouchInputHandler;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Z)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Z)V
    .locals 8
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "renderData"    # Lcom/termux/x11/input/RenderData;
    .param p3, "injector"    # Lcom/termux/x11/input/InputEventSender;
    .param p4, "isTouchpad"    # Z

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$StylusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mStylusListener:Lcom/termux/x11/input/TouchInputHandler$StylusListener;

    .line 84
    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mHMListener:Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;

    .line 94
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mMetrics:Landroid/util/DisplayMetrics;

    .line 96
    new-instance v0, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    .line 97
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeUpAction:Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeDownAction:Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeUpAction:Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeDownAction:Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->backButtonAction:Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mediaKeysAction:Ljava/util/function/BiConsumer;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    .line 154
    const/4 v2, 0x1

    filled-new-array {v2, v2}, [I

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v6

    const/4 v7, 0x3

    filled-new-array {v5, v7}, [I

    move-result-object v5

    filled-new-array {v3, v6, v5}, [[I

    move-result-object v3

    iput-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->buttons:[[I

    .line 159
    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->savedBS:I

    .line 160
    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    .line 171
    if-eqz p3, :cond_3

    .line 174
    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/termux/x11/input/RenderData;

    invoke-direct {v3}, Lcom/termux/x11/input/RenderData;-><init>()V

    :goto_0
    iput-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    .line 175
    iput-object p3, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    .line 176
    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    .line 177
    sget-object v3, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    const-string v5, "display"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    sput-object v3, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 179
    sget-object v3, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    rem-int/2addr v3, v4

    sput v3, Lcom/termux/x11/input/TouchInputHandler;->mDisplayRotation:I

    .line 180
    sget-object v3, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v4, Lcom/termux/x11/input/TouchInputHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v3, v4, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 183
    :cond_1
    new-instance v3, Lcom/termux/x11/input/TouchInputHandler$GestureListener;

    invoke-direct {v3, p0, v1}, Lcom/termux/x11/input/TouchInputHandler$GestureListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;Lcom/termux/x11/input/TouchInputHandler$1;)V

    .line 184
    .local v3, "listener":Lcom/termux/x11/input/TouchInputHandler$GestureListener;
    new-instance v4, Landroid/view/GestureDetector;

    invoke-direct {v4, p1, v3, v1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mScroller:Landroid/view/GestureDetector;

    .line 190
    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mScroller:Landroid/view/GestureDetector;

    invoke-virtual {v4, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 192
    new-instance v0, Lcom/termux/x11/input/TapGestureDetector;

    invoke-direct {v0, p1, v3}, Lcom/termux/x11/input/TapGestureDetector;-><init>(Landroid/content/Context;Lcom/termux/x11/input/TapGestureDetector$OnTapListener;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTapDetector:Lcom/termux/x11/input/TapGestureDetector;

    .line 193
    new-instance v0, Lcom/termux/x11/input/SwipeDetector;

    invoke-direct {v0, p1}, Lcom/termux/x11/input/SwipeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipePinchDetector:Lcom/termux/x11/input/SwipeDetector;

    .line 198
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 199
    .local v0, "density":F
    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeThreshold:F

    .line 203
    invoke-virtual {p0, v2}, Lcom/termux/x11/input/TouchInputHandler;->setInputMode(I)V

    .line 204
    new-instance v4, Lcom/termux/x11/input/TouchInputHandler$DexListener;

    invoke-direct {v4, p0, p1}, Lcom/termux/x11/input/TouchInputHandler$DexListener;-><init>(Lcom/termux/x11/input/TouchInputHandler;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mDexListener:Lcom/termux/x11/input/TouchInputHandler$DexListener;

    .line 205
    if-eqz p4, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/termux/x11/input/TouchInputHandler;

    iget-object v5, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    invoke-direct {v4, p1, v5, p3, v2}, Lcom/termux/x11/input/TouchInputHandler;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Z)V

    :goto_1
    iput-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    .line 207
    invoke-static {}, Lcom/termux/x11/input/TouchInputHandler;->refreshInputDevices()V

    .line 208
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    const-string v4, "input"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    new-instance v4, Lcom/termux/x11/input/TouchInputHandler$2;

    invoke-direct {v4, p0}, Lcom/termux/x11/input/TouchInputHandler$2;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    invoke-virtual {v2, v4, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 232
    return-void

    .line 172
    .end local v0    # "density":F
    .end local v3    # "listener":Lcom/termux/x11/input/TouchInputHandler$GestureListener;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static synthetic access$1000(Lcom/termux/x11/input/TouchInputHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    invoke-virtual {p0}, Lcom/termux/x11/input/TouchInputHandler;->onSwipe()Z

    move-result v0

    return v0
.end method

.method public static synthetic access$1100(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/SwipeDetector;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipePinchDetector:Lcom/termux/x11/input/SwipeDetector;

    return-object v0
.end method

.method public static synthetic access$1200(Lcom/termux/x11/input/TouchInputHandler;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->moveCursorToScreenPoint(FF)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/termux/x11/input/TouchInputHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSuppressCursorMovement:Z

    return v0
.end method

.method public static synthetic access$1302(Lcom/termux/x11/input/TouchInputHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/termux/x11/input/TouchInputHandler;->mSuppressCursorMovement:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/RenderData;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    return-object v0
.end method

.method public static synthetic access$1500(Lcom/termux/x11/input/TouchInputHandler;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->moveCursorByOffset(FF)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/termux/x11/input/TouchInputHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mIsDragging:Z

    return v0
.end method

.method public static synthetic access$1602(Lcom/termux/x11/input/TouchInputHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/termux/x11/input/TouchInputHandler;->mIsDragging:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/termux/x11/input/TouchInputHandler;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static synthetic access$1800(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/TouchInputHandler;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    return-object v0
.end method

.method public static synthetic access$1900(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/TapGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTapDetector:Lcom/termux/x11/input/TapGestureDetector;

    return-object v0
.end method

.method public static synthetic access$200()I
    .locals 1

    .line 53
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->mDisplayRotation:I

    return v0
.end method

.method public static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 53
    sput p0, Lcom/termux/x11/input/TouchInputHandler;->mDisplayRotation:I

    return p0
.end method

.method public static synthetic access$300()Landroid/hardware/display/DisplayManager;
    .locals 1

    .line 53
    sget-object v0, Lcom/termux/x11/input/TouchInputHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/MainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    return-object v0
.end method

.method public static synthetic access$600(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputStrategyInterface;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/termux/x11/input/TouchInputHandler;)Lcom/termux/x11/input/InputEventSender;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    return-object v0
.end method

.method public static synthetic access$800(Lcom/termux/x11/input/TouchInputHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;

    .line 53
    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeCompleted:Z

    return v0
.end method

.method public static synthetic access$924(Lcom/termux/x11/input/TouchInputHandler;F)F
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/input/TouchInputHandler;
    .param p1, "x1"    # F

    .line 53
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    return v0
.end method

.method public static isExternal(Landroid/view/InputDevice;)Z
    .locals 4
    .param p0, "d"    # Landroid/view/InputDevice;

    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 413
    invoke-static {p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/InputDevice;)Z

    move-result v0

    return v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/view/InputDevice;

    const-string v2, "isExternal"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 419
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static isMediaSessionKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 766
    sparse-switch p0, :sswitch_data_0

    .line 779
    const/4 v0, 0x0

    return v0

    .line 777
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic lambda$extractUserActionFromPreferences$6(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "down"    # Ljava/lang/Boolean;

    .line 483
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->put(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/Integer;
    .param p1, "down"    # Ljava/lang/Boolean;

    .line 96
    return-void
.end method

.method public static synthetic lambda$refreshInputDevices$1(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/InputDevice;)V
    .locals 8
    .param p0, "stylusAvailable"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "externalKeyboardAvailable"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "device"    # Landroid/view/InputDevice;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found device \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const/16 v1, 0x4002

    invoke-virtual {p2, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v2

    const-string v3, "external "

    const-string v4, ""

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/termux/x11/input/TouchInputHandler;->isExternal(Landroid/view/InputDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "stylus "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const/16 v2, 0x101

    invoke-virtual {p2, v2}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v5

    if-ne v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/termux/x11/input/TouchInputHandler;->isExternal(Landroid/view/InputDevice;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "keyboard "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sources "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p2}, Landroid/view/InputDevice;->getSources()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%08X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v3, "DEVICES"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p2, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 255
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v0

    if-ne v0, v6, :cond_5

    invoke-static {p2}, Lcom/termux/x11/input/TouchInputHandler;->isExternal(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 257
    :cond_5
    return-void
.end method

.method public static refreshInputDevices()V
    .locals 6

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 240
    .local v0, "stylusAvailable":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 241
    .local v2, "externalKeyboardAvailable":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "external keyboard connected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "DEVICES"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v5, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda6;-><init>()V

    .line 243
    invoke-interface {v1, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v5, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$$ExternalSyntheticLambda7;-><init>()V

    .line 244
    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v5, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v2}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 245
    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requesting stylus "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Lcom/termux/x11/LorieView;->requestStylusEnabled(Z)V

    .line 261
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/termux/x11/MainActivity;->setExternalKeyboardConnected(Z)V

    .line 262
    return-void
.end method


# virtual methods
.method public extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "p"    # Lcom/termux/x11/Prefs;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 493
    iget-object v0, p1, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    .line 494
    .local v0, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 495
    return-object v1

    .line 497
    :cond_0
    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "restart activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v3, "release pointer and keyboard capture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "open preferences"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v3, "exit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "toggle additional key bar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "toggle soft keyboard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/high16 v3, 0xc000000

    packed-switch v2, :pswitch_data_0

    .line 515
    return-object v1

    .line 511
    :pswitch_0
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    new-instance v2, Lcom/termux/x11/input/TouchInputHandler$5;

    const-string v4, "com.termux.x11.ACTION_CUSTOM"

    invoke-direct {v2, p0, v4, p2}, Lcom/termux/x11/input/TouchInputHandler$5;-><init>(Lcom/termux/x11/input/TouchInputHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 505
    :pswitch_1
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    .line 506
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 505
    invoke-static {v1, p3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 499
    :pswitch_2
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    new-instance v2, Lcom/termux/x11/input/TouchInputHandler$4;

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    const-class v5, Lcom/termux/x11/LoriePreferences;

    invoke-direct {v2, p0, v4, v5}, Lcom/termux/x11/input/TouchInputHandler$4;-><init>(Lcom/termux/x11/input/TouchInputHandler;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, p3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x540f04af -> :sswitch_5
        -0x18b72fdb -> :sswitch_4
        0x2fb91e -> :sswitch_3
        0x23da9222 -> :sswitch_2
        0x480e12b2 -> :sswitch_1
        0x7fce9600 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public extractTitleFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "p"    # Lcom/termux/x11/Prefs;
    .param p2, "name"    # Ljava/lang/String;

    .line 521
    iget-object v0, p1, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    .line 522
    .local v0, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 523
    return-object v1

    .line 525
    :cond_0
    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notification_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 527
    .local v3, "id":I
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/util/function/BiConsumer;
    .locals 3
    .param p1, "p"    # Lcom/termux/x11/Prefs;
    .param p2, "name"    # Ljava/lang/String;

    .line 474
    iget-object v0, p1, Lcom/termux/x11/Prefs;->keys:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;

    .line 475
    .local v0, "pref":Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
    if-nez v0, :cond_0

    .line 476
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    return-object v1

    .line 478
    :cond_0
    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "release pointer and keyboard capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "open preferences"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "send volume up"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v2, "toggle additional key bar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v2, "send media action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_6
    const-string v2, "send volume down"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v2, "toggle fullscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v2, "toggle soft keyboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 488
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    return-object v1

    .line 487
    :pswitch_0
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda11;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 486
    :pswitch_1
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda10;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 485
    :pswitch_2
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda9;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 484
    :pswitch_3
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda8;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 483
    :pswitch_4
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda7;-><init>()V

    return-object v1

    .line 482
    :pswitch_5
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda6;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 481
    :pswitch_6
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda5;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 480
    :pswitch_7
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    .line 479
    :pswitch_8
    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/termux/x11/input/TouchInputHandler$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/input/TouchInputHandler;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x540f04af -> :sswitch_8
        -0x51c183f9 -> :sswitch_7
        -0x40db02b0 -> :sswitch_6
        -0x37f0f476 -> :sswitch_5
        -0x18b72fdb -> :sswitch_4
        0x2fb91e -> :sswitch_3
        0x12503ac9 -> :sswitch_2
        0x23da9222 -> :sswitch_1
        0x480e12b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleClientSizeChanged(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 367
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput p1, v0, Lcom/termux/x11/input/RenderData;->screenWidth:I

    .line 368
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput p2, v0, Lcom/termux/x11/input/RenderData;->screenHeight:I

    .line 370
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->handleClientSizeChanged(II)V

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/input/TouchInputHandler;->resetTransformation()V

    .line 374
    return-void
.end method

.method public handleHostSizeChanged(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 377
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput p1, v0, Lcom/termux/x11/input/RenderData;->imageWidth:I

    .line 378
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iput p2, v0, Lcom/termux/x11/input/RenderData;->imageHeight:I

    .line 380
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/input/TouchInputHandler;->handleHostSizeChanged(II)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/input/TouchInputHandler;->resetTransformation()V

    .line 384
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 385
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view0"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 274
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    const v1, 0x100008

    const/4 v2, 0x1

    nop

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 275
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/termux/x11/input/TouchInputHandler;->isDexEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 278
    :cond_2
    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eq p1, p2, :cond_3

    .line 279
    new-array v4, v0, [I

    .line 280
    .local v4, "view0Location":[I
    new-array v5, v0, [I

    .line 282
    .local v5, "viewLocation":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 283
    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 285
    aget v6, v5, v3

    aget v7, v4, v3

    sub-int/2addr v6, v7

    .line 286
    .local v6, "offsetX":I
    aget v7, v5, v2

    aget v8, v4, v2

    sub-int/2addr v7, v8

    .line 288
    .local v7, "offsetY":I
    neg-int v8, v6

    int-to-float v8, v8

    neg-int v9, v7

    int-to-float v9, v9

    invoke-virtual {p3, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 291
    .end local v4    # "view0Location":[I
    .end local v5    # "viewLocation":[I
    .end local v6    # "offsetX":I
    .end local v7    # "offsetY":I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 292
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 294
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 295
    invoke-virtual {p0, v2}, Lcom/termux/x11/input/TouchInputHandler;->setCapturingEnabled(Z)V

    .line 297
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-eq v4, v0, :cond_10

    .line 298
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    goto/16 :goto_3

    .line 301
    :cond_6
    invoke-virtual {p0, p3}, Lcom/termux/x11/input/TouchInputHandler;->isDexEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    nop

    if-nez v0, :cond_7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    .line 302
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v4, 0x2002

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_8

    .line 303
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v4, 0x20004

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_9

    .line 304
    :cond_8
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mHMListener:Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;

    invoke-virtual {v0, p2, p3}, Lcom/termux/x11/input/TouchInputHandler$HardwareMouseListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 306
    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 308
    invoke-virtual {p0, p3}, Lcom/termux/x11/input/TouchInputHandler;->isDexEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mDexListener:Lcom/termux/x11/input/TouchInputHandler$DexListener;

    invoke-virtual {v0, p2, p3}, Lcom/termux/x11/input/TouchInputHandler$DexListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 309
    return v2

    .line 314
    :cond_a
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$NullInputStrategy;

    if-eqz v0, :cond_b

    .line 315
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    invoke-virtual {v0, p3, v4}, Lcom/termux/x11/input/InputEventSender;->sendTouchEvent(Landroid/view/MotionEvent;Lcom/termux/x11/input/RenderData;)V

    goto :goto_0

    .line 317
    :cond_b
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    invoke-interface {v0, p3}, Lcom/termux/x11/input/InputStrategyInterface;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mScroller:Landroid/view/GestureDetector;

    invoke-virtual {v0, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 322
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTapDetector:Lcom/termux/x11/input/TapGestureDetector;

    invoke-virtual {v0, p3}, Lcom/termux/x11/input/TapGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 323
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipePinchDetector:Lcom/termux/x11/input/SwipeDetector;

    invoke-virtual {v0, p3}, Lcom/termux/x11/input/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 326
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    .line 327
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    .line 328
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->buttons:[[I

    array-length v1, v0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_d

    aget-object v5, v0, v4

    .line 329
    .local v5, "button":[I
    aget v6, v5, v3

    invoke-virtual {p0, v6}, Lcom/termux/x11/input/TouchInputHandler;->isMouseButtonChanged(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 330
    iget-object v6, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    aget v7, v5, v2

    aget v8, v5, v3

    invoke-virtual {p0, v8}, Lcom/termux/x11/input/TouchInputHandler;->mouseButtonDown(I)Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7, v8, v2}, Lcom/termux/x11/input/InputEventSender;->sendMouseEvent(Landroid/graphics/PointF;IZZ)V

    .line 328
    .end local v5    # "button":[I
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 331
    :cond_d
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->savedBS:I

    .line 333
    :cond_e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 341
    :sswitch_0
    const/16 v0, 0x9

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, -0x3d380000    # -100.0f

    mul-float/2addr v0, v1

    .line 342
    .local v0, "scrollY":F
    const/16 v3, 0xa

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    mul-float/2addr v3, v1

    .line 344
    .local v3, "scrollX":F
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-virtual {v1, v3, v0}, Lcom/termux/x11/input/InputEventSender;->sendMouseWheelEvent(FF)V

    .line 345
    return v2

    .line 348
    .end local v0    # "scrollY":F
    .end local v3    # "scrollX":F
    :sswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    .line 349
    goto :goto_2

    .line 335
    :sswitch_2
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mSuppressCursorMovement:Z

    .line 336
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeCompleted:Z

    .line 337
    iput-boolean v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mIsDragging:Z

    .line 338
    nop

    .line 354
    :goto_2
    return v2

    .line 357
    :cond_f
    return v3

    .line 299
    :cond_10
    :goto_3
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mStylusListener:Lcom/termux/x11/input/TouchInputHandler$StylusListener;

    invoke-virtual {v0, p3}, Lcom/termux/x11/input/TouchInputHandler$StylusListener;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public isDexEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 265
    const/16 v0, 0x3002

    .line 266
    .local v0, "SOURCE_DEX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const v2, 0x100008

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 266
    :goto_0
    return v2
.end method

.method public isMouseButtonChanged(I)Z
    .locals 2
    .param p1, "mask"    # I

    .line 162
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->savedBS:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    and-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic lambda$extractUserActionFromPreferences$10(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 487
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    return-void
.end method

.method public final synthetic lambda$extractUserActionFromPreferences$2(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 479
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->toggleKeyboardVisibility(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$extractUserActionFromPreferences$3(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 480
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->toggleExtraKeys()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$extractUserActionFromPreferences$4(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 481
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    new-instance v1, Lcom/termux/x11/input/TouchInputHandler$3;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    const-class v3, Lcom/termux/x11/LoriePreferences;

    invoke-direct {v1, p0, v2, v3}, Lcom/termux/x11/input/TouchInputHandler$3;-><init>(Lcom/termux/x11/input/TouchInputHandler;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$extractUserActionFromPreferences$5(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 482
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/termux/x11/input/TouchInputHandler;->setCapturingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$extractUserActionFromPreferences$7(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 484
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$extractUserActionFromPreferences$8(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 485
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    return-void
.end method

.method public final synthetic lambda$extractUserActionFromPreferences$9(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "down"    # Ljava/lang/Boolean;

    .line 486
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    return-void
.end method

.method public mouseButtonDown(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 166
    iget v0, p0, Lcom/termux/x11/input/TouchInputHandler;->currentBS:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final moveCursorByOffset(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 550
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    neg-float v1, p1

    neg-float v2, p2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    invoke-virtual {v0}, Lcom/termux/x11/input/RenderData;->getCursorPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 554
    .local v0, "cursorPos":Landroid/graphics/PointF;
    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    .line 555
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v2, v2, Lcom/termux/x11/input/RenderData;->screenWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v4, v4, Lcom/termux/x11/input/RenderData;->screenHeight:I

    int-to-float v4, v4

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 556
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/termux/x11/input/RenderData;->setCursorPosition(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    .line 559
    .end local v0    # "cursorPos":Landroid/graphics/PointF;
    :cond_1
    :goto_0
    return-void
.end method

.method public final moveCursorToScreenPoint(FF)V
    .locals 6
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .line 563
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    instance-of v0, v0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;

    if-eqz v0, :cond_1

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v0, v0, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v1, v1, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 565
    .local v2, "imagePoint":[F
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    aget v4, v2, v3

    aget v5, v2, v0

    invoke-virtual {v1, v4, v5}, Lcom/termux/x11/input/RenderData;->setCursorPosition(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    aget v4, v2, v3

    float-to-int v4, v4

    int-to-float v4, v4

    aget v0, v2, v0

    invoke-virtual {v1, v4, v0, v3}, Lcom/termux/x11/input/InputEventSender;->sendCursorMove(FFZ)V

    .line 568
    .end local v2    # "imagePoint":[F
    :cond_1
    return-void
.end method

.method public final onSwipe()Z
    .locals 6

    .line 573
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 572
    iget v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    iget v5, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 573
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeDownAction:Ljava/util/function/BiConsumer;

    invoke-interface {v0, v1, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 574
    :cond_0
    iget v4, p0, Lcom/termux/x11/input/TouchInputHandler;->mTotalMotionY:F

    iget v5, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeThreshold:F

    neg-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 575
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeUpAction:Ljava/util/function/BiConsumer;

    invoke-interface {v0, v1, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 579
    :goto_0
    iput-boolean v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mSuppressCursorMovement:Z

    .line 580
    iput-boolean v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mSwipeCompleted:Z

    .line 581
    return v2

    .line 577
    :cond_1
    return v0
.end method

.method public reloadPreferences(Lcom/termux/x11/Prefs;)V
    .locals 7
    .param p1, "p"    # Lcom/termux/x11/Prefs;

    .line 425
    iget-object v0, p1, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/input/TouchInputHandler;->setInputMode(I)V

    .line 426
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->tapToMove:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->tapToMove:Z

    .line 427
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->preferScancodes:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->preferScancodes:Z

    .line 428
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->pointerCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->pointerCapture:Z

    .line 429
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->scaleTouchpad:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    nop

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 430
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 431
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v4, "native"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->scaleTouchpad:Z

    .line 432
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->capturedPointerSpeedFactor:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    iput v1, v0, Lcom/termux/x11/input/InputEventSender;->capturedPointerSpeedFactor:F

    .line 433
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->dexMetaKeyCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->dexMetaKeyCapture:Z

    .line 434
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->stylusIsMouse:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->stylusIsMouse:Z

    .line 435
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->stylusButtonContactModifierMode:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->stylusButtonContactModifierMode:Z

    .line 436
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v1, p1, Lcom/termux/x11/Prefs;->pauseKeyInterceptingWithEsc:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/x11/input/InputEventSender;->pauseKeyInterceptingWithEsc:Z

    .line 437
    iget-object v0, p1, Lcom/termux/x11/Prefs;->transformCapturedPointer:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v1, "ud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_2

    :sswitch_1
    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_2

    :sswitch_2
    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_2

    :sswitch_3
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_2

    :goto_1
    move v0, v6

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 451
    sput v2, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    goto :goto_3

    .line 448
    :pswitch_0
    sput v6, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    .line 449
    goto :goto_3

    .line 445
    :pswitch_1
    sput v5, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    .line 446
    goto :goto_3

    .line 442
    :pswitch_2
    sput v3, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    .line 443
    goto :goto_3

    .line 439
    :pswitch_3
    sput v4, Lcom/termux/x11/input/TouchInputHandler;->capturedPointerTransformation:I

    .line 440
    nop

    .line 454
    :goto_3
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 456
    iget-object v0, p1, Lcom/termux/x11/Prefs;->pointerCapture:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasPointerCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->pauseKeyInterceptingWithEsc:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasPointerCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :goto_4
    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    .line 460
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v1, v1, Lcom/termux/x11/input/InputEventSender;->dexMetaKeyCapture:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v0, v2}, Lcom/termux/x11/utils/SamsungDexUtils;->dexMetaKeyCapture(Landroid/app/Activity;Z)V

    .line 462
    const-string v0, "swipeUp"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeUpAction:Ljava/util/function/BiConsumer;

    .line 463
    const-string v0, "swipeDown"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->swipeDownAction:Ljava/util/function/BiConsumer;

    .line 464
    const-string v0, "volumeUp"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeUpAction:Ljava/util/function/BiConsumer;

    .line 465
    const-string v0, "volumeDown"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeDownAction:Ljava/util/function/BiConsumer;

    .line 466
    const-string v0, "backButton"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->backButtonAction:Ljava/util/function/BiConsumer;

    .line 467
    const-string v0, "mediaKeys"

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractUserActionFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/util/function/BiConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mediaKeysAction:Ljava/util/function/BiConsumer;

    .line 469
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-eqz v0, :cond_6

    .line 470
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1}, Lcom/termux/x11/input/TouchInputHandler;->reloadPreferences(Lcom/termux/x11/Prefs;)V

    .line 471
    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_3
        0xc33 -> :sswitch_2
        0xc60 -> :sswitch_1
        0xe8f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final resetTransformation()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v0, v0, Lcom/termux/x11/input/RenderData;->screenWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v1, v1, Lcom/termux/x11/input/RenderData;->imageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 362
    .local v0, "sx":F
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v1, v1, Lcom/termux/x11/input/RenderData;->screenHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget v2, v2, Lcom/termux/x11/input/RenderData;->imageHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 363
    .local v1, "sy":F
    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v2, v2, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 364
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/KeyEvent;

    .line 783
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 785
    .local v0, "k":I
    invoke-static {}, Lcom/termux/x11/MainActivity;->isConnected()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 786
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 787
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 789
    :cond_0
    return v3

    .line 792
    :cond_1
    invoke-static {v0}, Lcom/termux/x11/input/TouchInputHandler;->isMediaSessionKey(I)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 793
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mediaKeysAction:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    if-ne v1, v2, :cond_2

    .line 794
    return v3

    .line 796
    :cond_2
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mediaKeysAction:Ljava/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 797
    return v4

    .line 800
    :cond_4
    const/16 v1, 0x19

    if-ne v0, v1, :cond_7

    .line 801
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeDownAction:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    if-ne v1, v2, :cond_5

    .line 802
    return v3

    .line 804
    :cond_5
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeDownAction:Ljava/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 805
    return v4

    .line 808
    :cond_7
    const/16 v1, 0x18

    if-ne v0, v1, :cond_a

    .line 809
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeUpAction:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->noAction:Ljava/util/function/BiConsumer;

    if-ne v1, v2, :cond_8

    .line 810
    return v3

    .line 812
    :cond_8
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->volumeUpAction:Ljava/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 813
    return v4

    .line 816
    :cond_a
    if-ne v0, v2, :cond_14

    .line 817
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_b

    const v1, 0x20004

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    goto :goto_0

    .line 825
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    const/16 v2, 0x9e

    if-ne v1, v2, :cond_d

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    if-nez v1, :cond_14

    .line 826
    :cond_e
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->backButtonAction:Ljava/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_f

    move v3, v4

    :cond_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 827
    return v4

    .line 818
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-eqz v1, :cond_10

    .line 819
    return v4

    .line 820
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_13

    .line 821
    :cond_11
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v1}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_12

    move v9, v4

    goto :goto_1

    :cond_12
    move v9, v3

    :goto_1
    const/4 v10, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x3

    invoke-virtual/range {v5 .. v10}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 822
    :cond_13
    return v4

    .line 831
    :cond_14
    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-virtual {v1, p1}, Lcom/termux/x11/input/InputEventSender;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public setCapturingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 399
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->pointerCapture:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->pauseKeyInterceptingWithEsc:Z

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->dexMetaKeyCapture:Z

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-static {v0, p1}, Lcom/termux/x11/utils/SamsungDexUtils;->dexMetaKeyCapture(Landroid/app/Activity;Z)V

    .line 407
    :cond_1
    iput-boolean p1, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    .line 409
    :cond_2
    return-void
.end method

.method public setInputMode(I)V
    .locals 4
    .param p1, "inputMode"    # I

    .line 388
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mTouchpadHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-direct {v0, v1}, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;-><init>(Lcom/termux/x11/input/InputEventSender;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    goto :goto_0

    .line 390
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 391
    new-instance v0, Lcom/termux/x11/input/InputStrategyInterface$NullInputStrategy;

    invoke-direct {v0}, Lcom/termux/x11/input/InputStrategyInterface$NullInputStrategy;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    goto :goto_0

    .line 392
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 393
    new-instance v0, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mRenderData:Lcom/termux/x11/input/RenderData;

    iget-object v2, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-object v3, p0, Lcom/termux/x11/input/TouchInputHandler;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/x11/input/InputStrategyInterface$SimulatedTouchInputStrategy;-><init>(Lcom/termux/x11/input/RenderData;Lcom/termux/x11/input/InputEventSender;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    goto :goto_0

    .line 395
    :cond_2
    new-instance v0, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;

    iget-object v1, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    invoke-direct {v0, v1}, Lcom/termux/x11/input/InputStrategyInterface$TrackpadInputStrategy;-><init>(Lcom/termux/x11/input/InputEventSender;)V

    iput-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInputStrategy:Lcom/termux/x11/input/InputStrategyInterface;

    .line 396
    :goto_0
    return-void
.end method

.method public setupNotification(Lcom/termux/x11/Prefs;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4
    .param p1, "prefs"    # Lcom/termux/x11/Prefs;
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 533
    const-string v0, "notificationTap"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/termux/x11/input/TouchInputHandler;->extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    .local v2, "i":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 536
    :cond_0
    const/4 v0, 0x1

    const-string v3, "notificationButton0"

    invoke-virtual {p0, p1, v3, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0, p1, v3}, Lcom/termux/x11/input/TouchInputHandler;->extractTitleFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 539
    :cond_1
    const/4 v0, 0x2

    const-string v3, "notificationButton1"

    invoke-virtual {p0, p1, v3, v0}, Lcom/termux/x11/input/TouchInputHandler;->extractIntentFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {p0, p1, v3}, Lcom/termux/x11/input/TouchInputHandler;->extractTitleFromPreferences(Lcom/termux/x11/Prefs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 542
    :cond_2
    return-object p2
.end method

.method public shouldInterceptKeys()Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler;->mInjector:Lcom/termux/x11/input/InputEventSender;

    iget-boolean v0, v0, Lcom/termux/x11/input/InputEventSender;->pauseKeyInterceptingWithEsc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/termux/x11/input/TouchInputHandler;->keyIntercepting:Z

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
