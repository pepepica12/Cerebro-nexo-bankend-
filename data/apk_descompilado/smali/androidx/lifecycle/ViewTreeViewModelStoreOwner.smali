.class public abstract Landroidx/lifecycle/ViewTreeViewModelStoreOwner;
.super Ljava/lang/Object;
.source "ViewTreeViewModelStoreOwner.android.kt"


# direct methods
.method public static final set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 1
    .param p0, "$this$setViewTreeViewModelStoreOwner"    # Landroid/view/View;
    .param p1, "viewModelStoreOwner"    # Landroidx/lifecycle/ViewModelStoreOwner;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget v0, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    return-void
.end method
