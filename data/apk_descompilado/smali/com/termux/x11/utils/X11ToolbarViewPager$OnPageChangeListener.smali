.class public Lcom/termux/x11/utils/X11ToolbarViewPager$OnPageChangeListener;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "X11ToolbarViewPager.java"


# instance fields
.field public final act:Lcom/termux/x11/MainActivity;

.field public final mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/termux/x11/MainActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/x11/MainActivity;
    .param p2, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 118
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$OnPageChangeListener;->act:Lcom/termux/x11/MainActivity;

    .line 120
    iput-object p2, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$OnPageChangeListener;->mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 121
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 125
    if-nez p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$OnPageChangeListener;->act:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getLorieView()Lcom/termux/x11/LorieView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$OnPageChangeListener;->mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

    sget v1, Lcom/termux/x11/R$id;->terminal_toolbar_text_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 129
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 131
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method
