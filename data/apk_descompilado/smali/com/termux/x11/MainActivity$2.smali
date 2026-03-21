.class public Lcom/termux/x11/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/x11/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$M37k1VeJXa3_skxMAXPs2ic7cFw(Lcom/termux/x11/MainActivity$2;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/termux/x11/MainActivity$2;->lambda$onPreDraw$0()V

    return-void
.end method

.method public constructor <init>(Lcom/termux/x11/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/MainActivity;

    .line 126
    iput-object p1, p0, Lcom/termux/x11/MainActivity$2;->this$0:Lcom/termux/x11/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onPreDraw$0()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/termux/x11/MainActivity$2;->this$0:Lcom/termux/x11/MainActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/MainActivity$2;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v1, v1, Lcom/termux/x11/MainActivity;->mOnPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 129
    invoke-static {}, Lcom/termux/x11/LorieView;->connected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/termux/x11/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/x11/MainActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/x11/MainActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/MainActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
