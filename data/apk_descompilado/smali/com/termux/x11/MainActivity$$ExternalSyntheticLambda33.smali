.class public final synthetic Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnDragListener;


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

    iput-object p1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;->f$0:Lcom/termux/x11/MainActivity;

    iput-object p2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;->f$2:Landroidx/viewpager/widget/ViewPager;

    iput-object p4, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;->f$3:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;->f$0:Lcom/termux/x11/MainActivity;

    iget-object v1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;->f$2:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda33;->f$3:Landroid/widget/LinearLayout;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/termux/x11/MainActivity;->$r8$lambda$HSjhzpYhX9x6Qoq8imCuJkdYlTc(Lcom/termux/x11/MainActivity;Landroid/widget/Button;Landroidx/viewpager/widget/ViewPager;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method
