.class public Landroidx/lifecycle/MutableLiveData;
.super Landroidx/lifecycle/LiveData;
.source "MutableLiveData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    .local p0, "this":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<TT;>;"
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 50
    .local p0, "this":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
