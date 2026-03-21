.class public Lcom/termux/x11/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ApplySharedPref"
    }
.end annotation


# static fields
.field public static externalKeyboardConnected:Z

.field public static handler:Landroid/os/Handler;

.field public static inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public static instance:Lcom/termux/x11/MainActivity;

.field public static oldFullscreen:Z

.field public static oldHideCutout:Z

.field public static prefs:Lcom/termux/x11/Prefs;

.field public static showIMEWhileExternalConnected:Z


# instance fields
.field public filterOutWinKey:Z

.field public frm:Landroid/widget/FrameLayout;

.field public isInPictureInPictureMode:Z

.field public mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

.field public mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

.field public mLorieKeyListener:Landroid/view/View$OnKeyListener;

.field public mNotification:Landroid/app/Notification;

.field public final mNotificationId:I

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public orientation:I

.field public final preferencesChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public final receiver:Landroid/content/BroadcastReceiver;

.field public service:Lcom/termux/x11/ICmdEntryInterface;

.field public useTermuxEKBarBehaviour:Z


# direct methods
.method public static synthetic $r8$lambda$-HuCaQjLlgTz1fLYwlxWBlB7RaE(Lcom/termux/x11/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/x11/MainActivity;->lambda$onCreate$4(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2iJ_xA38s73OII-lXpL-RO0b9aU(Lcom/termux/x11/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/termux/x11/MainActivity;->lambda$onCreate$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2mVFb9Zk-tcMVtPJcujzPDKbA8o(Lcom/termux/x11/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/termux/x11/MainActivity;->lambda$onCreate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$81ok8rDoQIf5wzjOWLb_tDtz4uA(Lcom/termux/x11/MainActivity;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->lambda$clientConnectedStateChanged$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$9AbCABEnjUX3CHQsn_TnPYUhGiA(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$15(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F3gOMbXe9fF3wqrH5hIkx7xUo6A(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$14(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FE9nBWW36sRbNihR2_sm1y9XATk(Lcom/termux/x11/MainActivity;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->lambda$onReceiveConnection$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$HSjhzpYhX9x6Qoq8imCuJkdYlTc(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$19(Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IH3UEnOrgji2p81YOw8HJDi_nSY(Lcom/termux/x11/MainActivity;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/x11/MainActivity;->lambda$onCreate$9(Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LJAfcu61aaNCjMe6z9pX5X__JRw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$13(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N2F8scjWsvl0JgFvYB1WOzcBnJI(Lcom/termux/x11/MainActivity;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/x11/MainActivity;->lambda$onCreate$8(Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PLNnDI5AYtqDZ9F8QMtXy6I9YXk(Lcom/termux/x11/MainActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/termux/x11/MainActivity;->lambda$onCreate$12(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$SsQDQ-G2x1r-l7_CezWMS4LTWmA(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$20(Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Tc-BMSh7_PDG14F0TbBIjEnsQhA(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/MainActivity;->lambda$initMouseAuxButtons$21(Landroid/widget/LinearLayout;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WioKitxn8GOY8phcJnLAxB0q8Xk(Lcom/termux/x11/MainActivity;Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/termux/x11/MainActivity;->lambda$onCreate$5(Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XAGfZUfl7tRvStV90bpMBHDUeDc(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$16(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XTwcxc_N6_P7LFPor0bDgrPSz74(Lcom/termux/x11/MainActivity;Lcom/termux/x11/LorieView;IIII)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/termux/x11/MainActivity;->lambda$onCreate$10(Lcom/termux/x11/LorieView;IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$_nza2lb_iuYnZLMkWcbv4OBEVfM(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$17(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_rjnp6vAlrJ-dezklPsMxj7f7e4(Lcom/termux/x11/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/termux/x11/MainActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bsmPM1n1lamcvLEY6JmQDfJ-gks(Lcom/termux/x11/MainActivity;Ljava/lang/Integer;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/termux/x11/MainActivity;->lambda$initMouseAuxButtons$23(Ljava/lang/Integer;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fXnTrgqbElx9gRIwXtoX2Tz32pI(Lcom/termux/x11/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/termux/x11/MainActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lvu0YMCkJTeVfRq4c9-7jeV4IUM(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/MainActivity;->lambda$initMouseAuxButtons$24(Landroid/widget/Button;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mWHpbWOOTPAvG76lRFZ92exXOO8(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/termux/x11/MainActivity;->lambda$initStylusAuxButtons$18(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mXPF56ralUnmBH2yG_TM5hkNZjA(Lcom/termux/x11/MainActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/x11/MainActivity;->lambda$setTerminalToolbarView$27(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pfiVj9T6G2AymV5WzaDNZETHQ5M(Lcom/termux/x11/MainActivity;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/termux/x11/MainActivity;->lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wM0kVendmz7B9AXG2yWVqBFULgc(Lcom/termux/x11/MainActivity;Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/termux/x11/MainActivity;->lambda$onCreate$6(Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$whME7UV6bxOeaC_VtJ3mzegJCSE(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/termux/x11/MainActivity;->lambda$initMouseAuxButtons$22(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4eicpim8Har3j3ije79UcHDiqg(Lcom/termux/x11/MainActivity;Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/termux/x11/MainActivity;->lambda$onCreate$7(Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zKM68qpZxdgz0t_ZyGBkg2XrGt0(Lcom/termux/x11/MainActivity;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->lambda$onReceiveConnection$26()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/x11/MainActivity;->externalKeyboardConnected:Z

    .line 96
    const/4 v1, 0x0

    sput-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    .line 98
    sput-boolean v0, Lcom/termux/x11/MainActivity;->oldFullscreen:Z

    sput-boolean v0, Lcom/termux/x11/MainActivity;->oldHideCutout:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    .line 86
    const/16 v0, 0x1ed4

    iput v0, p0, Lcom/termux/x11/MainActivity;->mNotificationId:I

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/MainActivity;->filterOutWinKey:Z

    .line 93
    iput-boolean v0, p0, Lcom/termux/x11/MainActivity;->useTermuxEKBarBehaviour:Z

    .line 94
    iput-boolean v0, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    .line 99
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/termux/x11/MainActivity;)V

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->preferencesChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 101
    new-instance v0, Lcom/termux/x11/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/termux/x11/MainActivity$1;-><init>(Lcom/termux/x11/MainActivity;)V

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Lcom/termux/x11/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/termux/x11/MainActivity$2;-><init>(Lcom/termux/x11/MainActivity;)V

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 139
    sput-object p0, Lcom/termux/x11/MainActivity;->instance:Lcom/termux/x11/MainActivity;

    .line 140
    return-void
.end method

.method public static synthetic access$000(Lcom/termux/x11/MainActivity;)Lcom/termux/x11/input/TouchInputHandler;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/MainActivity;

    .line 76
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/termux/x11/MainActivity;
    .locals 1

    .line 147
    sget-object v0, Lcom/termux/x11/MainActivity;->instance:Lcom/termux/x11/MainActivity;

    return-object v0
.end method

.method public static getPrefs()Lcom/termux/x11/Prefs;
    .locals 1

    .line 143
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    return-object v0
.end method

.method public static getRealMetrics(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p0, "m"    # Landroid/util/DisplayMetrics;

    .line 884
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 888
    :cond_0
    return-void
.end method

.method public static hasPipPermission(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 813
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 814
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 815
    return v1

    .line 816
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x1

    const-string v5, "android:picture_in_picture"

    if-lt v2, v3, :cond_2

    .line 817
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v5, v2, v3}, Lcom/termux/x11/MainActivity$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    move v1, v4

    :cond_1
    return v1

    .line 819
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method

.method public static isConnected()Z
    .locals 1

    .line 877
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 878
    const/4 v0, 0x0

    return v0

    .line 880
    :cond_0
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$initStylusAuxButtons$13(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$initStylusAuxButtons$14(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$initStylusAuxButtons$15(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$initStylusAuxButtons$16(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$initStylusAuxButtons$17(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 6
    .param p0, "left"    # Landroid/widget/Button;
    .param p1, "middle"    # Landroid/widget/Button;
    .param p2, "right"    # Landroid/widget/Button;
    .param p3, "visibility"    # Landroid/widget/Button;
    .param p4, "view"    # Landroid/view/View;

    .line 278
    invoke-virtual {p4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 279
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f28f5c3    # 0.66f

    if-ne v0, v3, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 280
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    if-ne v0, v2, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 281
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 282
    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 283
    return-void
.end method

.method public static setCapturingEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .line 891
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 894
    :cond_1
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p0}, Lcom/termux/x11/input/TouchInputHandler;->setCapturingEnabled(Z)V

    .line 895
    return-void

    .line 892
    :goto_0
    return-void
.end method

.method public static toggleKeyboardVisibility(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 845
    const-string v0, "MainActivity"

    const-string v1, "Toggling keyboard visibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    sget-object v0, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "externalKeyboardConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/termux/x11/MainActivity;->externalKeyboardConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showIMEWhileExternalConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toggleKeyboardVisibility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    sget-boolean v0, Lcom/termux/x11/MainActivity;->externalKeyboardConnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 851
    :cond_1
    sget-object v0, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 849
    :goto_0
    sget-object v0, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 853
    :goto_1
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 855
    :cond_2
    return-void
.end method


# virtual methods
.method public buildNotification()Landroid/app/Notification;
    .locals 3

    .line 697
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->getNotificationChannel(Landroid/app/NotificationManager;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 698
    const-string v1, "Termux:X11"

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$drawable;->ic_x11_icon:I

    .line 699
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 700
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$string;->notification_content_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 701
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 702
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 703
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSilent(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 704
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 705
    const v1, -0x9f8275

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 706
    .local v0, "builder":Landroidx/core/app/NotificationCompat$Builder;
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v1, v2, v0}, Lcom/termux/x11/input/TouchInputHandler;->setupNotification(Lcom/termux/x11/Prefs;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public clientConnectedStateChanged()V
    .locals 1

    .line 859
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda32;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 874
    return-void
.end method

.method public getLorieView()Lcom/termux/x11/LorieView;
    .locals 1

    .line 639
    sget v0, Lcom/termux/x11/R$id;->lorieView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/LorieView;

    return-object v0
.end method

.method public final getNotificationChannel(Landroid/app/NotificationManager;)Ljava/lang/String;
    .locals 5
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;

    .line 710
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/termux/x11/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "channelId":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$string;->app_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 712
    .local v1, "channelName":Ljava/lang/String;
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 713
    .local v2, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 714
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 715
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    .line 716
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/termux/x11/MainActivity$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Z)V

    .line 717
    :cond_0
    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 718
    return-object v0
.end method

.method public getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 643
    sget v0, Lcom/termux/x11/R$id;->terminal_toolbar_view_pager:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public handleKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/KeyEvent;

    .line 690
    iget-boolean v0, p0, Lcom/termux/x11/MainActivity;->filterOutWinKey:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x76

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mLorieKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public initMouseAuxButtons()V
    .locals 15

    .line 411
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v6

    .line 412
    .local v6, "pager":Landroidx/viewpager/widget/ViewPager;
    sget v0, Lcom/termux/x11/R$id;->mouse_button_left_click:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Button;

    .line 413
    .local v3, "left":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->mouse_button_right_click:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 414
    .local v4, "right":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->mouse_button_middle_click:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 415
    .local v9, "middle":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons_position:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageButton;

    .line 416
    .local v13, "pos":Landroid/widget/ImageButton;
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    .line 417
    .local v5, "primaryLayer":Landroid/widget/LinearLayout;
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons_secondary_layer:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 419
    .local v2, "secondaryLayer":Landroid/widget/LinearLayout;
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    const-string v8, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v14, v0

    .line 420
    .local v14, "mouseHelperEnabled":Z
    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda27;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda27;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v7, v3

    move-object v11, v4

    .end local v3    # "left":Landroid/widget/Button;
    .end local v4    # "right":Landroid/widget/Button;
    .local v7, "left":Landroid/widget/Button;
    .local v11, "right":Landroid/widget/Button;
    invoke-static/range {v7 .. v12}, Lcom/termux/x11/MainActivity$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .end local v7    # "left":Landroid/widget/Button;
    .end local v11    # "right":Landroid/widget/Button;
    .restart local v3    # "left":Landroid/widget/Button;
    .restart local v4    # "right":Landroid/widget/Button;
    new-instance v7, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v7, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda28;-><init>(Lcom/termux/x11/MainActivity;)V

    .line 443
    invoke-interface {v0, v7}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 459
    new-instance v0, Lcom/termux/x11/MainActivity$6;

    invoke-direct {v0, p0, v5, v13}, Lcom/termux/x11/MainActivity$6;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 505
    return-void
.end method

.method public final initStylusAuxButtons()V
    .locals 14

    .line 262
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v5

    .line 263
    .local v5, "pager":Landroidx/viewpager/widget/ViewPager;
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->showStylusClickOverride:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v11, v0

    .line 264
    .local v11, "stylusMenuEnabled":Z
    const v12, 0x3f28f5c3    # 0.66f

    .line 265
    .local v12, "menuUnselectedTrasparency":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 266
    .local v13, "menuSelectedTrasparency":F
    sget v0, Lcom/termux/x11/R$id;->button_left_click:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 267
    .local v4, "left":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->button_right_click:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 268
    .local v9, "right":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->button_middle_click:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    .line 269
    .local v8, "middle":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->button_visibility:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Button;

    .line 270
    .local v3, "visibility":Landroid/widget/Button;
    sget v0, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 271
    .local v6, "overlay":Landroid/widget/LinearLayout;
    sget v0, Lcom/termux/x11/R$id;->mouse_helper_secondary_layer:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 272
    .local v2, "buttons":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 273
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 274
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 275
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 276
    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    new-instance v7, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v7, v4, v8, v9, v3}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda23;-><init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 285
    .local v7, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda24;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda24;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    sput v10, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 316
    invoke-interface {v7, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 318
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, v3, v5, v6}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 351
    return-void
.end method

.method public final synthetic lambda$clientConnectedStateChanged$28()V
    .locals 5

    .line 860
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v0

    .line 861
    .local v0, "connected":Z
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 862
    sget v1, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 863
    sget v1, Lcom/termux/x11/R$id;->stub:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 864
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 867
    if-nez v0, :cond_3

    .line 868
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->tryConnect()Z

    goto :goto_2

    .line 870
    :cond_3
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    invoke-static {p0, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 872
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->onWindowFocusChanged(Z)V

    .line 873
    return-void
.end method

.method public final synthetic lambda$initMouseAuxButtons$21(Landroid/widget/LinearLayout;Landroidx/viewpager/widget/ViewPager;)V
    .locals 4
    .param p1, "primaryLayer"    # Landroid/widget/LinearLayout;
    .param p2, "pager"    # Landroidx/viewpager/widget/ViewPager;

    .line 433
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 434
    .local v0, "maxX":F
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 435
    .local v1, "maxY":F
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 436
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 437
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-static {v2, v3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-static {v2, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    .line 439
    return-void
.end method

.method public final synthetic lambda$initMouseAuxButtons$22(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/viewpager/widget/ViewPager;Landroid/view/View;)V
    .locals 4
    .param p1, "secondaryLayer"    # Landroid/widget/LinearLayout;
    .param p2, "left"    # Landroid/widget/Button;
    .param p3, "right"    # Landroid/widget/Button;
    .param p4, "primaryLayer"    # Landroid/widget/LinearLayout;
    .param p5, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p6, "v"    # Landroid/view/View;

    .line 423
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/16 v1, 0x60

    const/16 v2, 0x30

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0, p2, v2, v1}, Lcom/termux/x11/MainActivity;->setSize(Landroid/view/View;II)V

    .line 425
    invoke-virtual {p0, p3, v2, v1}, Lcom/termux/x11/MainActivity;->setSize(Landroid/view/View;II)V

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p0, p2, v1, v2}, Lcom/termux/x11/MainActivity;->setSize(Landroid/view/View;II)V

    .line 429
    invoke-virtual {p0, p3, v1, v2}, Lcom/termux/x11/MainActivity;->setSize(Landroid/view/View;II)V

    .line 430
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 432
    :goto_0
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p4, p5}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda31;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroidx/viewpager/widget/ViewPager;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void
.end method

.method public final synthetic lambda$initMouseAuxButtons$23(Ljava/lang/Integer;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "b"    # Ljava/lang/Integer;
    .param p2, "v"    # Landroid/widget/Button;
    .param p3, "__"    # Landroid/view/View;
    .param p4, "e"    # Landroid/view/MotionEvent;

    .line 444
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 452
    :pswitch_1
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 447
    :pswitch_2
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/termux/x11/LorieView;->sendMouseEvent(FFIZZ)V

    .line 448
    invoke-virtual {p2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 449
    nop

    .line 456
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic lambda$initMouseAuxButtons$24(Landroid/widget/Button;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/Button;
    .param p2, "b"    # Ljava/lang/Integer;

    .line 443
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p2, p1}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda34;-><init>(Lcom/termux/x11/MainActivity;Ljava/lang/Integer;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final synthetic lambda$initStylusAuxButtons$18(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 7
    .param p1, "buttons"    # Landroid/widget/LinearLayout;
    .param p2, "visibility"    # Landroid/widget/Button;
    .param p3, "left"    # Landroid/widget/Button;
    .param p4, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p5, "overlay"    # Landroid/widget/LinearLayout;
    .param p6, "listener"    # Landroid/view/View$OnClickListener;
    .param p7, "middle"    # Landroid/widget/Button;
    .param p8, "right"    # Landroid/widget/Button;
    .param p9, "view"    # Landroid/view/View;

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x3f28f5c3    # 0.66f

    if-nez v0, :cond_3

    .line 291
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 293
    sget v0, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 294
    .local v0, "m":I
    if-ne v0, v3, :cond_0

    const-string v1, "L"

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const-string v1, "M"

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const-string v1, "R"

    goto :goto_0

    :cond_2
    const-string v1, "U"

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .end local v0    # "m":I
    goto :goto_3

    .line 296
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 297
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 298
    const-string v0, "X"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    .line 302
    .local v0, "maxX":F
    iget-object v4, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 303
    .local v4, "maxY":F
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 304
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 307
    :cond_4
    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    invoke-virtual {p5, v5}, Landroid/view/View;->setX(F)V

    .line 308
    invoke-virtual {p5}, Landroid/view/View;->getY()F

    move-result v5

    invoke-static {v5, v6, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    invoke-virtual {p5, v5}, Landroid/view/View;->setY(F)V

    .line 310
    sget v5, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 311
    .local v5, "m":I
    if-ne v5, v3, :cond_6

    :cond_5
    goto :goto_1

    :cond_6
    if-ne v5, v2, :cond_7

    move-object v1, p7

    goto :goto_2

    :cond_7
    if-ne v5, v1, :cond_5

    move-object v1, p8

    goto :goto_2

    :goto_1
    move-object v1, p3

    :goto_2
    invoke-interface {p6, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 313
    .end local v0    # "maxX":F
    .end local v4    # "maxY":F
    .end local v5    # "m":I
    :goto_3
    return-void
.end method

.method public final synthetic lambda$initStylusAuxButtons$19(Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7
    .param p1, "visibility"    # Landroid/widget/Button;
    .param p2, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p3, "overlay"    # Landroid/widget/LinearLayout;
    .param p4, "v2"    # Landroid/view/View;
    .param p5, "event"    # Landroid/view/DragEvent;

    .line 325
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 326
    .local v0, "maxX":F
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 327
    .local v1, "maxY":F
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 328
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 330
    :cond_0
    invoke-virtual {p5}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 342
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v2

    invoke-static {v2, v3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setX(F)V

    .line 343
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v2

    invoke-static {v2, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 333
    :pswitch_2
    invoke-virtual {p5}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    .line 334
    .local v2, "dX":F
    invoke-virtual {p5}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    .line 337
    .local v4, "dY":F
    invoke-static {v2, v3, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/View;->setX(F)V

    .line 338
    invoke-static {v4, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/View;->setY(F)V

    .line 339
    nop

    .line 346
    .end local v2    # "dX":F
    .end local v4    # "dY":F
    :goto_0
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic lambda$initStylusAuxButtons$20(Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View;)Z
    .locals 4
    .param p1, "visibility"    # Landroid/widget/Button;
    .param p2, "pager"    # Landroidx/viewpager/widget/ViewPager;
    .param p3, "overlay"    # Landroid/widget/LinearLayout;
    .param p4, "v"    # Landroid/view/View;

    .line 319
    const-string v0, ""

    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Lcom/termux/x11/MainActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/termux/x11/MainActivity$5;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View;)V

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 323
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;-><init>(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "__"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 99
    invoke-virtual {p0, p2}, Lcom/termux/x11/MainActivity;->onPreferencesChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 170
    new-instance v0, Lcom/termux/x11/MainActivity$3;

    const-class v1, Lcom/termux/x11/LoriePreferences;

    invoke-direct {v0, p0, p0, v1}, Lcom/termux/x11/MainActivity$3;-><init>(Lcom/termux/x11/MainActivity;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic lambda$onCreate$10(Lcom/termux/x11/LorieView;IIII)V
    .locals 2
    .param p1, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .param p4, "screenWidth"    # I
    .param p5, "screenHeight"    # I

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    :goto_0
    float-to-int v0, v0

    .line 206
    .local v0, "framerate":I
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v1, p2, p3}, Lcom/termux/x11/input/TouchInputHandler;->handleHostSizeChanged(II)V

    .line 207
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v1, p4, p5}, Lcom/termux/x11/input/TouchInputHandler;->handleClientSizeChanged(II)V

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    goto :goto_1

    .line 210
    :cond_2
    invoke-static {p0}, Lcom/termux/x11/utils/SamsungDexUtils;->checkDeXEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    const-string v1, "dex"

    .local v1, "name":Ljava/lang/String;
    goto :goto_2

    .line 213
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const-string v1, "external"

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_2

    .line 209
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    const-string v1, "builtin"

    .line 214
    .restart local v1    # "name":Ljava/lang/String;
    :goto_2
    invoke-static {p4, p5, v0, v1}, Lcom/termux/x11/LorieView;->sendWindowChange(IIILjava/lang/String;)V

    .line 215
    return-void
.end method

.method public final synthetic lambda$onCreate$11(Landroid/view/View;)V
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final synthetic lambda$onCreate$12(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 250
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->makeSureHelpersAreVisibleAndInScreenBounds()V

    return-void
.end method

.method public final synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://github.com/termux/termux-x11/blob/master/README.md#running-graphical-applications"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic lambda$onCreate$3(Landroid/view/View;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View;

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final synthetic lambda$onCreate$4(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "k"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .line 179
    invoke-virtual {p3}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 180
    .local v0, "dev":Landroid/view/InputDevice;
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v1, p3}, Lcom/termux/x11/input/TouchInputHandler;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 183
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/termux/x11/MainActivity;->useTermuxEKBarBehaviour:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-virtual {v2}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->unsetSpecialKeys()V

    .line 185
    :cond_1
    return v1
.end method

.method public final synthetic lambda$onCreate$5(Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "lorieParent"    # Landroid/view/View;
    .param p2, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "e"    # Landroid/view/MotionEvent;

    .line 191
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p1, p4}, Landroid/view/View;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2, p4}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final synthetic lambda$onCreate$6(Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "lorieParent"    # Landroid/view/View;
    .param p2, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "e"    # Landroid/view/MotionEvent;

    .line 196
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2, p4}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final synthetic lambda$onCreate$7(Landroid/view/View;Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "lorieParent"    # Landroid/view/View;
    .param p2, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "e"    # Landroid/view/MotionEvent;

    .line 197
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p2, p4}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final synthetic lambda$onCreate$8(Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "e"    # Landroid/view/MotionEvent;

    .line 198
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p1, p3}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final synthetic lambda$onCreate$9(Lcom/termux/x11/LorieView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "lorieView"    # Lcom/termux/x11/LorieView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "e"    # Landroid/view/MotionEvent;

    .line 199
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p1, p1, p3}, Lcom/termux/x11/input/TouchInputHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final synthetic lambda$onReceiveConnection$25()V
    .locals 1

    .line 519
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/termux/x11/LorieView;->connect(I)V

    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->clientConnectedStateChanged()V

    return-void
.end method

.method public final synthetic lambda$onReceiveConnection$26()V
    .locals 2

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    .line 518
    const-string v0, "Lorie"

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda35;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method public final synthetic lambda$setTerminalToolbarView$27(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "k"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .line 655
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v0, p3}, Lcom/termux/x11/input/TouchInputHandler;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final makeSureHelpersAreVisibleAndInScreenBounds()V
    .locals 8

    .line 372
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 373
    .local v0, "pager":Landroidx/viewpager/widget/ViewPager;
    sget v1, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 374
    .local v1, "mouseAuxButtons":Landroid/view/View;
    sget v2, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 375
    .local v2, "stylusAuxButtons":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 377
    .local v3, "maxYDecrement":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setX(F)V

    .line 378
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    int-to-float v7, v3

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setY(F)V

    .line 380
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setX(F)V

    .line 381
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    int-to-float v7, v3

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setY(F)V

    .line 382
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 810
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 725
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 727
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/termux/x11/MainActivity;->orientation:I

    if-eq v0, v1, :cond_0

    .line 728
    sget-object v0, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 730
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/termux/x11/MainActivity;->orientation:I

    .line 731
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 732
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 153
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    new-instance v0, Lcom/termux/x11/Prefs;

    invoke-direct {v0, p0}, Lcom/termux/x11/Prefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    .line 156
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 157
    .local v0, "modeValue":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 158
    sget-object v3, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v3, v3, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->put(Ljava/lang/String;)V

    .line 160
    :cond_0
    sget-object v3, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v3, v3, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v3

    sput-boolean v3, Lcom/termux/x11/MainActivity;->oldFullscreen:Z

    .line 161
    sget-object v3, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v3, v3, Lcom/termux/x11/Prefs;->hideCutout:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v3

    sput-boolean v3, Lcom/termux/x11/MainActivity;->oldHideCutout:Z

    .line 163
    sget-object v3, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v3}, Lcom/termux/x11/LoriePreferences$PrefsProto;->get()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/x11/MainActivity;->preferencesChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x7bffff80

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 166
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 167
    sget v1, Lcom/termux/x11/R$layout;->main_activity:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 169
    sget v1, Lcom/termux/x11/R$id;->frame:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    .line 170
    sget v1, Lcom/termux/x11/R$id;->preferences_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget v1, Lcom/termux/x11/R$id;->help_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v1, Lcom/termux/x11/R$id;->exit_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget v1, Lcom/termux/x11/R$id;->lorieView:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/LorieView;

    .line 175
    .local v1, "lorieView":Lcom/termux/x11/LorieView;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 177
    .local v3, "lorieParent":Landroid/view/View;
    new-instance v4, Lcom/termux/x11/input/TouchInputHandler;

    new-instance v6, Lcom/termux/x11/input/InputEventSender;

    invoke-direct {v6, v1}, Lcom/termux/x11/input/InputEventSender;-><init>(Lcom/termux/x11/input/InputStub;)V

    invoke-direct {v4, p0, v6}, Lcom/termux/x11/input/TouchInputHandler;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/input/InputEventSender;)V

    iput-object v4, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    .line 178
    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/termux/x11/MainActivity;)V

    iput-object v4, p0, Lcom/termux/x11/MainActivity;->mLorieKeyListener:Landroid/view/View$OnKeyListener;

    .line 188
    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, v3, v1}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View;Lcom/termux/x11/LorieView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, v3, v1}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View;Lcom/termux/x11/LorieView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 197
    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v3, v1}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View;Lcom/termux/x11/LorieView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 198
    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0, v1}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/LorieView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 199
    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0, v1}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/LorieView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 200
    iget-object v4, p0, Lcom/termux/x11/MainActivity;->mLorieKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 202
    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0, v1}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/termux/x11/MainActivity;Lcom/termux/x11/LorieView;)V

    invoke-virtual {v1, v4}, Lcom/termux/x11/LorieView;->setCallback(Lcom/termux/x11/LorieView$Callback;)V

    .line 217
    iget-object v4, p0, Lcom/termux/x11/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Lcom/termux/x11/MainActivity$4;

    const-string v7, "com.termux.x11.CmdEntryPoint.ACTION_START"

    invoke-direct {v6, p0, v7}, Lcom/termux/x11/MainActivity$4;-><init>(Lcom/termux/x11/MainActivity;Ljava/lang/String;)V

    .line 221
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x21

    if-lt v7, v8, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    .line 217
    :goto_0
    invoke-virtual {p0, v4, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 223
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    sput-object v2, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 226
    invoke-static {p0}, Lcom/termux/x11/utils/FullscreenWorkaround;->assistActivity(Landroid/app/Activity;)V

    .line 227
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/termux/x11/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 228
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->buildNotification()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/x11/MainActivity;->mNotification:Landroid/app/Notification;

    .line 229
    iget-object v2, p0, Lcom/termux/x11/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x1ed4

    iget-object v6, p0, Lcom/termux/x11/MainActivity;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 231
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->tryConnect()Z

    move-result v2

    const v4, 0x1020002

    if-eqz v2, :cond_2

    .line 232
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 234
    sget-object v6, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0, v2}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    .end local v2    # "content":Landroid/view/View;
    :cond_2
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/termux/x11/MainActivity;->onPreferencesChanged(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, v5, v5}, Lcom/termux/x11/MainActivity;->toggleExtraKeys(ZZ)V

    .line 240
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->initStylusAuxButtons()V

    .line 241
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->initMouseAuxButtons()V

    .line 243
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    if-lt v2, v8, :cond_3

    .line 244
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    nop

    if-eqz v6, :cond_3

    .line 245
    invoke-virtual {p0, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 246
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 249
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/termux/x11/MainActivity;->onReceiveConnection(Landroid/content/Intent;)V

    .line 250
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 251
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 257
    return-void
.end method

.method public onPause()V
    .locals 6

    .line 629
    sget-object v0, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 631
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 632
    .local v3, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v5, 0x1ed4

    if-ne v4, v5, :cond_0

    .line 633
    iget-object v4, p0, Lcom/termux/x11/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 631
    .end local v3    # "notification":Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 636
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 4
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 831
    iput-boolean p1, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    .line 832
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 833
    .local v0, "pager":Landroidx/viewpager/widget/ViewPager;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->opacityEKBar:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 834
    sget v2, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    const v3, 0x3f333333    # 0.7f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 835
    sget v2, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 837
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 838
    return-void
.end method

.method public onPreferencesChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 570
    const-string v0, "additionalKbdVisible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    return-void

    .line 573
    :cond_0
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda26;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda26;-><init>(Lcom/termux/x11/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 575
    return-void
.end method

.method public onPreferencesChangedCallback()V
    .locals 8

    .line 579
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->recheckStoringSecondaryDisplayPreferences()V

    .line 581
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->onWindowFocusChanged(Z)V

    .line 582
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    .line 584
    .local v0, "lorieView":Lcom/termux/x11/LorieView;
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v1, v2}, Lcom/termux/x11/input/TouchInputHandler;->reloadPreferences(Lcom/termux/x11/Prefs;)V

    .line 585
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0, v1}, Lcom/termux/x11/LorieView;->reloadPreferences(Lcom/termux/x11/Prefs;)V

    .line 587
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 589
    invoke-virtual {v0}, Lcom/termux/x11/LorieView;->triggerCallback()V

    .line 591
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->filterOutWinkey:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/x11/MainActivity;->filterOutWinKey:Z

    .line 592
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->enableAccessibilityServiceAutomatically:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-static {p0}, Lcom/termux/x11/utils/KeyInterceptor;->launch(Landroid/content/Context;)V

    goto :goto_0

    .line 594
    :cond_0
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 595
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/termux/x11/utils/KeyInterceptor;->shutdown(Z)V

    .line 597
    :cond_1
    :goto_0
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->useTermuxEKBarBehaviour:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    iput-boolean v1, p0, Lcom/termux/x11/MainActivity;->useTermuxEKBarBehaviour:Z

    .line 598
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->showIMEWhileExternalConnected:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    sput-boolean v1, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    .line 600
    sget v1, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 601
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->showMouseHelper:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->showMouseAuxButtons(Z)V

    .line 602
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->showStylusClickOverride:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/termux/x11/MainActivity;->showStylusAuxButtons(Z)V

    .line 604
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->opacityEKBar:Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;->get()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 606
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 607
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 609
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    array-length v2, v1

    :goto_3
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 610
    .local v4, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/16 v6, 0x1ed4

    if-ne v5, v6, :cond_4

    .line 611
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->buildNotification()Landroid/app/Notification;

    move-result-object v5

    iput-object v5, p0, Lcom/termux/x11/MainActivity;->mNotification:Landroid/app/Notification;

    .line 612
    iget-object v5, p0, Lcom/termux/x11/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p0, Lcom/termux/x11/MainActivity;->mNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 609
    .end local v4    # "notification":Landroid/service/notification/StatusBarNotification;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 614
    :cond_5
    return-void
.end method

.method public onReceiveConnection(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 508
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 509
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 510
    .local v2, "ibinder":Landroid/os/IBinder;
    :goto_1
    if-nez v2, :cond_2

    .line 511
    return-void

    .line 513
    :cond_2
    invoke-static {v2}, Lcom/termux/x11/ICmdEntryInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/termux/x11/ICmdEntryInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    .line 515
    :try_start_0
    iget-object v3, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v4, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda29;-><init>(Lcom/termux/x11/MainActivity;)V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    .line 524
    :goto_3
    :try_start_1
    iget-object v3, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 525
    const-string v3, "LorieBroadcastReceiver"

    const-string v4, "Extracting logcat fd."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v3, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    invoke-interface {v3}, Lcom/termux/x11/ICmdEntryInterface;->getLogcatOutput()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 527
    .local v3, "logcatOutput":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_3

    .line 528
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v4

    invoke-static {v4}, Lcom/termux/x11/LorieView;->startLogcat(I)V

    goto :goto_4

    .line 535
    .end local v3    # "logcatOutput":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    goto :goto_5

    .line 530
    .restart local v3    # "logcatOutput":Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->tryConnect()Z

    .line 532
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eq p1, v4, :cond_4

    .line 533
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 537
    .end local v3    # "logcatOutput":Landroid/os/ParcelFileDescriptor;
    :cond_4
    goto :goto_6

    .line 535
    :goto_5
    nop

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MainActivity"

    const-string v4, "Something went wrong while we were establishing connection"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 618
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 620
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->mNotification:Landroid/app/Notification;

    .line 621
    iget-object v0, p0, Lcom/termux/x11/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x1ed4

    iget-object v2, p0, Lcom/termux/x11/MainActivity;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 623
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 624
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 625
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 824
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->PIP:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/termux/x11/MainActivity;->hasPipPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {p0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    .line 827
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 12
    .param p1, "hasFocus"    # Z

    .line 737
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 738
    invoke-static {}, Lcom/termux/x11/utils/KeyInterceptor;->recheck()V

    .line 739
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto;->recheckStoringSecondaryDisplayPreferences()V

    .line 740
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 741
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 742
    .local v1, "decorView":Landroid/view/View;
    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->fullscreen:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    .line 743
    .local v2, "fullscreen":Z
    sget-object v3, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v3, v3, Lcom/termux/x11/Prefs;->hideCutout:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v3}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v3

    .line 744
    .local v3, "hideCutout":Z
    sget-object v4, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v4, v4, Lcom/termux/x11/Prefs;->Reseed:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v4}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v4

    .line 746
    .local v4, "reseed":Z
    sget-boolean v5, Lcom/termux/x11/MainActivity;->oldHideCutout:Z

    if-ne v5, v3, :cond_0

    sget-boolean v5, Lcom/termux/x11/MainActivity;->oldFullscreen:Z

    if-eq v5, v2, :cond_1

    :cond_0
    goto/16 :goto_8

    .line 756
    :cond_1
    sget-object v5, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v5, v5, Lcom/termux/x11/Prefs;->forceOrientation:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v5}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v6, "landscape"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_1

    :sswitch_1
    const-string v6, "portrait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_1

    :sswitch_2
    const-string v6, "reverse landscape"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_1

    :sswitch_3
    const-string v6, "reverse portrait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 761
    const/4 v5, -0x1

    .local v5, "requestedOrientation":I
    goto :goto_2

    .line 760
    .end local v5    # "requestedOrientation":I
    :pswitch_0
    const/16 v5, 0x8

    .restart local v5    # "requestedOrientation":I
    goto :goto_2

    .line 759
    .end local v5    # "requestedOrientation":I
    :pswitch_1
    const/16 v5, 0x9

    .restart local v5    # "requestedOrientation":I
    goto :goto_2

    .line 758
    .end local v5    # "requestedOrientation":I
    :pswitch_2
    const/4 v5, 0x0

    .restart local v5    # "requestedOrientation":I
    goto :goto_2

    .line 757
    .end local v5    # "requestedOrientation":I
    :pswitch_3
    const/4 v5, 0x1

    .line 764
    .restart local v5    # "requestedOrientation":I
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    if-eq v6, v5, :cond_3

    .line 765
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 767
    :cond_3
    if-eqz p1, :cond_7

    .line 768
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v6, v10, :cond_6

    .line 769
    if-eqz v3, :cond_5

    .line 770
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1e

    if-lt v10, v11, :cond_4

    .line 771
    goto :goto_3

    .line 772
    :cond_4
    move v7, v8

    :goto_3
    invoke-static {v6, v7}, Lcom/termux/x11/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_4

    .line 774
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/termux/x11/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 777
    :cond_6
    :goto_4
    const/high16 v6, -0x1000000

    invoke-virtual {v0, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 778
    invoke-virtual {v0, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 781
    :cond_7
    const v6, -0x7bffff80

    invoke-virtual {v0, v6, v9}, Landroid/view/Window;->setFlags(II)V

    .line 782
    if-eqz p1, :cond_9

    .line 783
    const/16 v6, 0x400

    if-eqz v2, :cond_8

    .line 784
    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 785
    const/16 v6, 0x1706

    invoke-virtual {v1, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_5

    .line 793
    :cond_8
    invoke-virtual {v0, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 794
    invoke-virtual {v1, v9}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 798
    :cond_9
    :goto_5
    sget-object v6, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v6, v6, Lcom/termux/x11/Prefs;->keepScreenOn:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v6}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v6

    const/16 v7, 0x80

    if-eqz v6, :cond_a

    .line 799
    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    goto :goto_6

    .line 801
    :cond_a
    invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 803
    :goto_6
    if-eqz v4, :cond_b

    const/16 v6, 0x10

    goto :goto_7

    :cond_b
    const/16 v6, 0x20

    :goto_7
    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 805
    const v6, 0x1020002

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    xor-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 806
    return-void

    .line 747
    .end local v5    # "requestedOrientation":I
    :goto_8
    sput-boolean v3, Lcom/termux/x11/MainActivity;->oldHideCutout:Z

    .line 748
    sput-boolean v2, Lcom/termux/x11/MainActivity;->oldFullscreen:Z

    .line 751
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 752
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7eb698e7 -> :sswitch_3
        -0x46564903 -> :sswitch_2
        0x2b77bb9b -> :sswitch_1
        0x5545f2bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExternalKeyboardConnected(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .line 906
    sput-boolean p1, Lcom/termux/x11/MainActivity;->externalKeyboardConnected:Z

    .line 907
    sget v0, Lcom/termux/x11/R$id;->terminal_toolbar_text_input:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 908
    .local v0, "textInput":Landroid/widget/EditText;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 909
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 910
    :cond_2
    if-eqz p1, :cond_3

    sget-boolean v2, Lcom/termux/x11/MainActivity;->showIMEWhileExternalConnected:Z

    if-nez v2, :cond_3

    .line 911
    sget-object v2, Lcom/termux/x11/MainActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 912
    :cond_3
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 913
    return-void
.end method

.method public setSize(Landroid/view/View;II)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 402
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v1, p2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 403
    int-to-float v1, p3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    int-to-float v1, p2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 406
    int-to-float v1, p3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 407
    return-void
.end method

.method public final setTerminalToolbarView()V
    .locals 7

    .line 647
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 648
    .local v0, "pager":Landroidx/viewpager/widget/ViewPager;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 650
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->showAdditionalKbd:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->additionalKbdVisible:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 652
    .local v2, "showNow":Z
    :goto_0
    if-eqz v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 654
    if-eqz v2, :cond_2

    .line 655
    new-instance v4, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;

    new-instance v5, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-direct {v4, p0, v5}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;-><init>(Lcom/termux/x11/MainActivity;Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 656
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 657
    new-instance v4, Lcom/termux/x11/utils/X11ToolbarViewPager$OnPageChangeListener;

    invoke-direct {v4, p0, v0}, Lcom/termux/x11/utils/X11ToolbarViewPager$OnPageChangeListener;-><init>(Lcom/termux/x11/MainActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 658
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_2

    .line 660
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 661
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 662
    iget-object v4, p0, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    if-eqz v4, :cond_3

    .line 663
    iget-object v4, p0, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-virtual {v4}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->unsetSpecialKeys()V

    .line 666
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 667
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42160000    # 37.5f

    mul-float/2addr v5, v6

    .line 668
    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->getExtraKeysInfo()Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    move-result-object v6

    if-nez v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->getExtraKeysInfo()Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;->getMatrix()[[Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    move-result-object v6

    array-length v6, v6

    :goto_3
    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 667
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 669
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    iget-object v5, p0, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    sget-object v6, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v6, v6, Lcom/termux/x11/Prefs;->adjustHeightForEK:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v6}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    :cond_5
    move v6, v3

    :goto_4
    invoke-virtual {v5, v3, v3, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 672
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 673
    return-void
.end method

.method public shouldInterceptKeys()Z
    .locals 2

    .line 898
    sget v0, Lcom/termux/x11/R$id;->terminal_toolbar_text_input:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 899
    .local v0, "textInput":Landroid/view/View;
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 902
    :cond_1
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->mInputHandler:Lcom/termux/x11/input/TouchInputHandler;

    invoke-virtual {v1}, Lcom/termux/x11/input/TouchInputHandler;->shouldInterceptKeys()Z

    move-result v1

    return v1

    .line 900
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public final showMouseAuxButtons(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 390
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "v":Landroid/view/View;
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->touchMode:Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    invoke-virtual {v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->get()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-boolean v1, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const v1, 0x3f333333    # 0.7f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 393
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->makeSureHelpersAreVisibleAndInScreenBounds()V

    .line 394
    return-void
.end method

.method public final showStylusAuxButtons(Z)V
    .locals 5
    .param p1, "show"    # Z

    .line 354
    sget v0, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 355
    .local v0, "buttons":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-boolean v1, p0, Lcom/termux/x11/MainActivity;->isInPictureInPictureMode:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 360
    :cond_1
    const/4 v1, 0x1

    sput v1, Lcom/termux/x11/input/TouchInputHandler;->STYLUS_INPUT_HELPER_MODE:I

    .line 361
    const v1, 0x3f28f5c3    # 0.66f

    .line 362
    .local v1, "menuUnselectedTrasparency":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 363
    .local v3, "menuSelectedTrasparency":F
    sget v4, Lcom/termux/x11/R$id;->button_left_click:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 364
    sget v2, Lcom/termux/x11/R$id;->button_right_click:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x3f28f5c3    # 0.66f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 365
    sget v2, Lcom/termux/x11/R$id;->button_middle_click:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 366
    sget v2, Lcom/termux/x11/R$id;->button_visibility:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 367
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .end local v1    # "menuUnselectedTrasparency":F
    .end local v3    # "menuSelectedTrasparency":F
    :goto_0
    return-void
.end method

.method public toggleExtraKeys()V
    .locals 2

    .line 686
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/termux/x11/MainActivity;->toggleExtraKeys(ZZ)V

    .line 687
    return-void
.end method

.method public toggleExtraKeys(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "saveState"    # Z

    .line 676
    sget-object v0, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v0, v0, Lcom/termux/x11/Prefs;->showAdditionalKbd:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v0

    .line 678
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 679
    sget-object v1, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v1, v1, Lcom/termux/x11/Prefs;->additionalKbdVisible:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v1, p1}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->put(Z)V

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->setTerminalToolbarView()V

    .line 682
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget-object v2, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    iget-object v2, v2, Lcom/termux/x11/Prefs;->Reseed:Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    invoke-virtual {v2}, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 683
    return-void
.end method

.method public toggleMouseAuxButtons()V
    .locals 1

    .line 397
    sget v0, Lcom/termux/x11/R$id;->mouse_buttons:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->showMouseAuxButtons(Z)V

    .line 398
    return-void
.end method

.method public toggleStylusAuxButtons()V
    .locals 1

    .line 385
    sget v0, Lcom/termux/x11/R$id;->mouse_helper_visibility:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/termux/x11/MainActivity;->showStylusAuxButtons(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->makeSureHelpersAreVisibleAndInScreenBounds()V

    .line 387
    return-void
.end method

.method public tryConnect()Z
    .locals 7

    .line 541
    const-string v0, "MainActivity"

    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 542
    return v2

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    const-wide/16 v3, 0xfa

    if-nez v1, :cond_1

    .line 545
    invoke-static {}, Lcom/termux/x11/LorieView;->requestConnection()Z

    move-result v0

    .line 546
    .local v0, "sent":Z
    sget-object v1, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda30;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    const/4 v1, 0x1

    return v1

    .line 551
    .end local v0    # "sent":Z
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    invoke-interface {v1}, Lcom/termux/x11/ICmdEntryInterface;->getXConnection()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 552
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_2

    .line 553
    const-string v5, "Extracting X connection socket."

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v5

    invoke-static {v5}, Lcom/termux/x11/LorieView;->connect(I)V

    .line 555
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/x11/LorieView;->triggerCallback()V

    .line 556
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->clientConnectedStateChanged()V

    .line 557
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v5

    sget-object v6, Lcom/termux/x11/MainActivity;->prefs:Lcom/termux/x11/Prefs;

    invoke-virtual {v5, v6}, Lcom/termux/x11/LorieView;->reloadPreferences(Lcom/termux/x11/Prefs;)V

    goto :goto_0

    .line 560
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 559
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    sget-object v5, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v6, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda30;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    goto :goto_2

    .line 560
    :goto_1
    nop

    .line 561
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Something went wrong while we were establishing connection"

    invoke-static {v0, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/MainActivity;->service:Lcom/termux/x11/ICmdEntryInterface;

    .line 564
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v5, p0}, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda30;-><init>(Lcom/termux/x11/MainActivity;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 566
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v2
.end method
