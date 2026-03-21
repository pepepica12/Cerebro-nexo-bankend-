.class public final synthetic Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/MainActivity;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Landroidx/viewpager/widget/ViewPager;

.field public final synthetic f$3:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;->f$0:Lcom/termux/x11/MainActivity;

    iput-object p2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;->f$2:Landroidx/viewpager/widget/ViewPager;

    iput-object p4, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;->f$3:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;->f$0:Lcom/termux/x11/MainActivity;

    iget-object v1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;->f$2:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda25;->f$3:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/termux/x11/MainActivity;->$r8$lambda$SsQDQ-G2x1r-l7_CezWMS4LTWmA(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
