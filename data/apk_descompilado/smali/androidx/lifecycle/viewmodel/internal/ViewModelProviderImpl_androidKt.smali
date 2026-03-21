.class public abstract Landroidx/lifecycle/viewmodel/internal/ViewModelProviderImpl_androidKt;
.super Ljava/lang/Object;
.source "ViewModelProviderImpl.android.kt"


# direct methods
.method public static final createViewModel(Landroidx/lifecycle/ViewModelProvider$Factory;Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .param p0, "factory"    # Landroidx/lifecycle/ViewModelProvider$Factory;
    .param p1, "modelClass"    # Lkotlin/reflect/KClass;
    .param p2, "extras"    # Landroidx/lifecycle/viewmodel/CreationExtras;

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    nop

    .line 35
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/AbstractMethodError;
    nop

    .line 38
    :try_start_1
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 39
    :catch_1
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/AbstractMethodError;
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "e":Ljava/lang/AbstractMethodError;
    :goto_0
    move-object v0, v1

    .line 34
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :goto_1
    return-object v0
.end method
