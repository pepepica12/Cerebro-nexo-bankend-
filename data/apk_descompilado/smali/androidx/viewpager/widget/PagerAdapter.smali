.class public abstract Landroidx/viewpager/widget/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# instance fields
.field public final mObservable:Landroid/database/DataSetObservable;

.field public mViewPagerObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public abstract destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .line 231
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 281
    const/4 v0, -0x1

    return v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .line 343
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 263
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public setViewPagerObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iput-object p1, p0, Landroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    .line 318
    monitor-exit p0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .line 166
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 99
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 100
    return-void
.end method
