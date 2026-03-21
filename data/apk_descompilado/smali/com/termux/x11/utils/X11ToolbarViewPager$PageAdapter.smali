.class public Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "X11ToolbarViewPager.java"


# instance fields
.field public final mActivity:Lcom/termux/x11/MainActivity;

.field public final mEventListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public static synthetic $r8$lambda$0Moy_NkMjy_6mvYnracxJ1lRz3M(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->lambda$instantiateItem$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8Ti_zOnc0hLJAB4pAzhjSuqr_go(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->lambda$instantiateItem$2(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FcA8SkcTrPEwujEF80gzUMepp3M(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->lambda$instantiateItem$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XPPk5VDfy5SwfyK8_zFOk8-KZns(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->lambda$instantiateItem$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bCZ6QHqXhwQ4JBH7PG8BUpn0QzU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->lambda$instantiateItem$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iY-gtcoW0vlrhNS7iE6bekmEil8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->lambda$instantiateItem$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/termux/x11/MainActivity;Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "listen"    # Landroid/view/View$OnKeyListener;

    .line 30
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    .line 32
    iput-object p2, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mEventListener:Landroid/view/View$OnKeyListener;

    .line 33
    return-void
.end method

.method public static synthetic lambda$instantiateItem$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$instantiateItem$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$instantiateItem$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v2"    # Landroid/view/View;
    .param p1, "e2"    # Landroid/view/MotionEvent;

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/termux/x11/MainActivity;->setCapturingEnabled(Z)V

    .line 76
    return v0
.end method

.method public static synthetic lambda$instantiateItem$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 93
    :pswitch_2
    const v0, -0x808081

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    nop

    .line 101
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "collection"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .line 110
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 37
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "collection"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 49
    iget-object v0, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 52
    sget v2, Lcom/termux/x11/R$layout;->view_terminal_toolbar_extra_keys:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "layout":Landroid/view/View;
    move-object v2, v1

    check-cast v2, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 54
    .local v2, "extraKeysView":Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    iget-object v3, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    new-instance v4, Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    iget-object v5, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mEventListener:Landroid/view/View$OnKeyListener;

    iget-object v6, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-direct {v4, v5, v6, v2}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;-><init>(Landroid/view/View$OnKeyListener;Lcom/termux/x11/MainActivity;Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    iput-object v4, v3, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    .line 55
    invoke-virtual {v2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->reload()V

    .line 56
    iget-object v3, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    iget-object v3, v3, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-virtual {v2, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setExtraKeysViewClient(Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;)V

    .line 57
    new-instance v3, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 58
    new-instance v3, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 59
    .end local v2    # "extraKeysView":Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    goto :goto_0

    .line 60
    .end local v1    # "layout":Landroid/view/View;
    :cond_0
    sget v2, Lcom/termux/x11/R$layout;->view_terminal_toolbar_text_input:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "layout":Landroid/view/View;
    sget v3, Lcom/termux/x11/R$id;->terminal_toolbar_text_input:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 62
    .local v3, "editText":Landroid/widget/EditText;
    sget v4, Lcom/termux/x11/R$id;->terminal_toolbar_back_button:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 64
    .local v4, "back":Landroid/widget/Button;
    new-instance v5, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 74
    new-instance v5, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    .line 79
    new-instance v5, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    new-instance v1, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$1;

    const/high16 v5, -0x1000000

    invoke-direct {v1, p0, v5}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$1;-><init>(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance v1, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v1, v2

    .line 104
    .end local v2    # "layout":Landroid/view/View;
    .end local v3    # "editText":Landroid/widget/EditText;
    .end local v4    # "back":Landroid/widget/Button;
    .restart local v1    # "layout":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 42
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic lambda$instantiateItem$2(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/widget/TextView;
    .param p3, "actionId"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 65
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "textToSend":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\r"

    :cond_0
    move-object v4, v0

    .line 67
    .end local v0    # "textToSend":Ljava/lang/String;
    .local v4, "textToSend":Ljava/lang/String;
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 68
    .local v1, "e":Landroid/view/KeyEvent;
    iget-object v0, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mEventListener:Landroid/view/View$OnKeyListener;

    iget-object v2, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v2}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 70
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic lambda$instantiateItem$4(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
