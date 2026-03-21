.class public Lcom/termux/x11/LorieView;
.super Landroid/view/SurfaceView;
.source "LorieView.java"

# interfaces
.implements Lcom/termux/x11/input/InputStub;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/LorieView$Callback;
    }
.end annotation


# static fields
.field private static clipboardSyncEnabled:Z

.field private static hardwareKbdScancodesWorkaround:Z

.field static final imeBuggyKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clipboard:Landroid/content/ClipboardManager;

.field clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field commitedText:Z

.field keyReleaseHandler:Landroid/os/Handler;

.field private lastClipboardTimestamp:J

.field private mCallback:Lcom/termux/x11/LorieView$Callback;

.field private final mConnection:Landroid/view/inputmethod/InputConnection;

.field private final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private final p:Landroid/graphics/Point;


# direct methods
.method public static synthetic $r8$lambda$vOBHAJUdHBjE9IZKln9xXLri70k(Lcom/termux/x11/LorieView;Landroid/graphics/Rect;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/x11/LorieView;->lambda$triggerCallback$0(Landroid/graphics/Rect;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 343
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    .line 344
    sput-boolean v0, Lcom/termux/x11/LorieView;->hardwareKbdScancodesWorkaround:Z

    .line 692
    nop

    .line 693
    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 694
    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 695
    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 696
    const/16 v3, 0x3b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 697
    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 692
    invoke-static {v0, v1, v2, v3, v4}, Lcom/termux/x11/LorieView$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/LorieView;->imeBuggyKeys:Ljava/util/Set;

    .line 856
    const-string v0, "Xlorie"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 581
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 347
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 349
    new-instance v1, Lcom/termux/x11/InputConnectionWrapper;

    new-instance v2, Lcom/termux/x11/LorieView$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/termux/x11/LorieView$1;-><init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V

    invoke-direct {v1, v2}, Lcom/termux/x11/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 555
    new-instance v0, Lcom/termux/x11/LorieView$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$2;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 700
    new-instance v0, Lcom/termux/x11/LorieView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$4;-><init>(Lcom/termux/x11/LorieView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    .line 736
    new-instance v0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 581
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 582
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 347
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 349
    new-instance v1, Lcom/termux/x11/InputConnectionWrapper;

    new-instance v2, Lcom/termux/x11/LorieView$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/termux/x11/LorieView$1;-><init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V

    invoke-direct {v1, v2}, Lcom/termux/x11/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 555
    new-instance v0, Lcom/termux/x11/LorieView$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$2;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 700
    new-instance v0, Lcom/termux/x11/LorieView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$4;-><init>(Lcom/termux/x11/LorieView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    .line 736
    new-instance v0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 582
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 583
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 347
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 349
    new-instance v1, Lcom/termux/x11/InputConnectionWrapper;

    new-instance v2, Lcom/termux/x11/LorieView$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/termux/x11/LorieView$1;-><init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V

    invoke-direct {v1, v2}, Lcom/termux/x11/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 555
    new-instance v0, Lcom/termux/x11/LorieView$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$2;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 700
    new-instance v0, Lcom/termux/x11/LorieView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$4;-><init>(Lcom/termux/x11/LorieView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    .line 736
    new-instance v0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 583
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 585
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 347
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 349
    new-instance v1, Lcom/termux/x11/InputConnectionWrapper;

    new-instance v2, Lcom/termux/x11/LorieView$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/termux/x11/LorieView$1;-><init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V

    invoke-direct {v1, v2}, Lcom/termux/x11/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    .line 555
    new-instance v0, Lcom/termux/x11/LorieView$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$2;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 700
    new-instance v0, Lcom/termux/x11/LorieView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$4;-><init>(Lcom/termux/x11/LorieView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    .line 736
    new-instance v0, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/LorieView;)V

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 585
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/LorieView;

    .line 332
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/termux/x11/LorieView;Landroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/LorieView;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 332
    invoke-direct {p0, p1}, Lcom/termux/x11/LorieView;->surfaceChanged(Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/termux/x11/LorieView;)Lcom/termux/x11/LorieView$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/LorieView;

    .line 332
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mCallback:Lcom/termux/x11/LorieView$Callback;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/termux/x11/LorieView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/LorieView;

    .line 332
    iget-object v0, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    return-object v0
.end method

.method public static native connect(I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native connected()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private init()V
    .locals 2

    .line 588
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    .line 590
    invoke-direct {p0}, Lcom/termux/x11/LorieView;->nativeInit()V

    .line 591
    return-void
.end method

.method private synthetic lambda$triggerCallback$0(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 613
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x5

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method private native nativeInit()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native requestConnection()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native requestStylusEnabled(Z)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native sendWindowChange(IIILjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native setClipboardSyncEnabled(ZZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native startLogcat(I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native surfaceChanged(Landroid/view/Surface;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public checkForClipboardChange()V
    .locals 5

    .line 775
    iget-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 776
    .local v0, "desc":Landroid/content/ClipDescription;
    sget-boolean v1, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 777
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 778
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    const/4 v2, 0x1

    nop

    if-ne v1, v2, :cond_1

    .line 779
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    nop

    if-nez v1, :cond_0

    .line 780
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 782
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->sendClipboardAnnounce()V

    .line 783
    const-string v1, "CLIP"

    const-string v2, "sending clipboard announce"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 726
    sget-object v0, Lcom/termux/x11/LorieView;->imeBuggyKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 729
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 733
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 709
    sget-object v0, Lcom/termux/x11/LorieView;->imeBuggyKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 714
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 718
    .end local v0    # "action":I
    :cond_0
    sget-boolean v0, Lcom/termux/x11/LorieView;->hardwareKbdScancodesWorkaround:Z

    if-eqz v0, :cond_1

    .line 719
    const/4 v0, 0x0

    return v0

    .line 721
    :cond_1
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/x11/MainActivity;->handleKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getDimensionsFromSettings()V
    .locals 9

    .line 617
    invoke-static {}, Lcom/termux/x11/MainActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v0

    .line 618
    .local v0, "prefs":Lcom/termux/x11/Prefs;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 619
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 620
    .local v2, "height":I
    move v3, v1

    .line 621
    .local v3, "w":I
    move v4, v2

    .line 622
    .local v4, "h":I
    iget-object v5, v0, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v6, "exact"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    goto :goto_1

    :sswitch_1
    const-string v6, "scaled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_1

    :sswitch_2
    const-string v6, "custom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :goto_0
    const/4 v5, -0x1

    :goto_1
    const-string v6, "x"

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 637
    :pswitch_0
    :try_start_0
    iget-object v5, v0, Lcom/termux/x11/Prefs;->displayResolutionCustom:Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 638
    .local v5, "resolution":[Ljava/lang/String;
    aget-object v6, v5, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 639
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 643
    .end local v5    # "resolution":[Ljava/lang/String;
    goto :goto_3

    .line 640
    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    .line 641
    .local v5, "ignored":Ljava/lang/IllegalArgumentException;
    :goto_2
    const/16 v3, 0x500

    .line 642
    const/16 v4, 0x400

    goto :goto_3

    .line 630
    .end local v5    # "ignored":Ljava/lang/IllegalArgumentException;
    :pswitch_1
    iget-object v5, v0, Lcom/termux/x11/Prefs;->displayResolutionExact:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 631
    .local v5, "resolution":[Ljava/lang/String;
    aget-object v6, v5, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 632
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 633
    goto :goto_3

    .line 624
    .end local v5    # "resolution":[Ljava/lang/String;
    :pswitch_2
    iget-object v5, v0, Lcom/termux/x11/Prefs;->displayScale:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v5

    .line 625
    .local v5, "scale":I
    mul-int/lit8 v6, v1, 0x64

    div-int v3, v6, v5

    .line 626
    mul-int/lit8 v6, v2, 0x64

    div-int v4, v6, v5

    .line 627
    nop

    .line 648
    .end local v5    # "scale":I
    :goto_3
    iget-object v5, v0, Lcom/termux/x11/Prefs;->adjustResolution:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ge v1, v2, :cond_1

    if-gt v3, v4, :cond_2

    :cond_1
    if-le v1, v2, :cond_3

    if-ge v3, v4, :cond_3

    .line 649
    :cond_2
    iget-object v5, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_4

    .line 651
    :cond_3
    iget-object v5, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 652
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_2
        -0x3621dfa6 -> :sswitch_1
        0x5c74aff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleClipboardChange()V
    .locals 0

    .line 771
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->checkForClipboardChange()V

    .line 772
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 804
    invoke-static {}, Lcom/termux/x11/MainActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/Prefs;->enforceCharBasedInput:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 807
    :cond_0
    const v0, 0x80001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 808
    :goto_0
    const-string v0, "\u21b5"

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 811
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 812
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 656
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 658
    invoke-static {}, Lcom/termux/x11/MainActivity;->getPrefs()Lcom/termux/x11/Prefs;

    move-result-object v0

    .line 659
    .local v0, "prefs":Lcom/termux/x11/Prefs;
    iget-object v1, v0, Lcom/termux/x11/Prefs;->displayStretch:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    nop

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 660
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v2, "native"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/termux/x11/Prefs;->displayResolutionMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 661
    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scaled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->getDimensionsFromSettings()V

    .line 668
    iget-object v1, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-gtz v1, :cond_2

    :cond_1
    goto :goto_1

    .line 671
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 672
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 674
    .local v2, "height":I
    iget-object v3, v0, Lcom/termux/x11/Prefs;->adjustResolution:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v3

    if-eqz v3, :cond_5

    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_4

    :cond_3
    if-le v1, v2, :cond_5

    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_5

    .line 676
    :cond_4
    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 678
    :cond_5
    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v2

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    if-le v1, v3, :cond_6

    .line 679
    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v2

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int v1, v3, v4

    goto :goto_0

    .line 681
    :cond_6
    iget-object v3, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v1

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int v2, v3, v4

    .line 683
    :goto_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/termux/x11/LorieView;->p:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-interface {v3, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 684
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 685
    return-void

    .line 669
    .end local v1    # "width":I
    .end local v2    # "height":I
    :goto_1
    return-void

    .line 662
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 663
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 789
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 791
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 793
    sget-boolean v0, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 794
    iget-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 795
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->checkForClipboardChange()V

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/termux/x11/LorieView;->clipboardListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 799
    :goto_0
    invoke-static {}, Lcom/termux/x11/input/TouchInputHandler;->refreshInputDevices()V

    .line 800
    return-void
.end method

.method public reloadPreferences(Lcom/termux/x11/Prefs;)V
    .locals 2
    .param p1, "p"    # Lcom/termux/x11/Prefs;

    .line 739
    iget-object v0, p1, Lcom/termux/x11/Prefs;->hardwareKbdScancodesWorkaround:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    sput-boolean v0, Lcom/termux/x11/LorieView;->hardwareKbdScancodesWorkaround:Z

    .line 740
    iget-object v0, p1, Lcom/termux/x11/Prefs;->clipboardEnable:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    sput-boolean v0, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    .line 741
    sget-boolean v0, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    sget-boolean v1, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    invoke-static {v0, v1}, Lcom/termux/x11/LorieView;->setClipboardSyncEnabled(ZZ)V

    .line 742
    invoke-static {}, Lcom/termux/x11/input/TouchInputHandler;->refreshInputDevices()V

    .line 743
    return-void
.end method

.method public requestClipboard()V
    .locals 4

    .line 757
    sget-boolean v0, Lcom/termux/x11/LorieView;->clipboardSyncEnabled:Z

    if-nez v0, :cond_0

    .line 758
    const-string v0, ""

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView;->sendClipboardEvent([B)V

    .line 759
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 763
    .local v0, "clip":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 764
    iget-object v1, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "text":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView;->sendClipboardEvent([B)V

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending clipboard contents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CLIP"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public resetIme()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 824
    iget-boolean v0, p0, Lcom/termux/x11/LorieView;->commitedText:Z

    if-nez v0, :cond_0

    .line 825
    return-void

    .line 827
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 828
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, p0}, Lcom/termux/x11/LorieView$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    goto :goto_0

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/LorieView;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 831
    :goto_0
    return-void
.end method

.method public native sendClipboardAnnounce()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native sendClipboardEvent([B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public sendKeyEvent(IIZ)Z
    .locals 1
    .param p1, "scanCode"    # I
    .param p2, "keyCode"    # I
    .param p3, "keyDown"    # Z

    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZI)Z

    move-result v0

    return v0
.end method

.method public native sendKeyEvent(IIZI)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native sendMouseEvent(FFIZZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public sendMouseWheelEvent(FF)V
    .locals 6
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 689
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1    # "deltaX":F
    .end local p2    # "deltaY":F
    .local v1, "deltaX":F
    .local v2, "deltaY":F
    invoke-virtual/range {v0 .. v5}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 690
    return-void
.end method

.method public native sendStylusEvent(FFIIIIIZZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native sendTextEvent([B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native sendTouchEvent(IIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public setCallback(Lcom/termux/x11/LorieView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/termux/x11/LorieView$Callback;

    .line 594
    iput-object p1, p0, Lcom/termux/x11/LorieView;->mCallback:Lcom/termux/x11/LorieView$Callback;

    .line 595
    invoke-virtual {p0}, Lcom/termux/x11/LorieView;->triggerCallback()V

    .line 596
    return-void
.end method

.method public setClipboardText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lcom/termux/x11/LorieView;->clipboard:Landroid/content/ClipboardManager;

    const-string v1, "X11 clipboard"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/termux/x11/LorieView;->lastClipboardTimestamp:J

    .line 753
    return-void
.end method

.method public triggerCallback()V
    .locals 3

    .line 599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 600
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 601
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 603
    new-instance v0, Lcom/termux/x11/LorieView$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/termux/x11/LorieView$3;-><init>(Lcom/termux/x11/LorieView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 612
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 613
    .local v0, "r":Landroid/graphics/Rect;
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v1

    new-instance v2, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/termux/x11/LorieView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/LorieView;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 614
    return-void
.end method
