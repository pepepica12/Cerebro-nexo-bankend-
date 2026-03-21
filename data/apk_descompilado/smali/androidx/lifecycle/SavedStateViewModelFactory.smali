.class public final Landroidx/lifecycle/SavedStateViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;
.source "SavedStateViewModelFactory.android.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public application:Landroid/app/Application;

.field public defaultArgs:Landroid/os/Bundle;

.field public final factory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field public lifecycle:Landroidx/lifecycle/Lifecycle;

.field public savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "owner"    # Landroidx/savedstate/SavedStateRegistryOwner;
    .param p3, "defaultArgs"    # Landroid/os/Bundle;

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;-><init>()V

    .line 102
    invoke-interface {p2}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 103
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 104
    iput-object p3, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->defaultArgs:Landroid/os/Bundle;

    .line 105
    iput-object p1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    .line 106
    nop

    .line 107
    if-eqz p1, :cond_0

    sget-object v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->Companion:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>()V

    .line 106
    :goto_0
    iput-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 109
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .param p1, "modelClass"    # Ljava/lang/Class;

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    nop

    .line 234
    .local v0, "canonicalName":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/SavedStateViewModelFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    return-object v1

    .line 231
    .end local v0    # "canonicalName":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 232
    nop

    .line 231
    const-string v1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 5
    .param p1, "modelClass"    # Ljava/lang/Class;
    .param p2, "extras"    # Landroidx/lifecycle/viewmodel/CreationExtras;

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Landroidx/lifecycle/ViewModelProvider;->VIEW_MODEL_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 122
    nop

    .line 128
    .local v0, "key":Ljava/lang/String;
    nop

    .line 129
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p2, v1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 130
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->VIEW_MODEL_STORE_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p2, v1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 132
    sget-object v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p2, v1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 133
    .local v1, "application":Landroid/app/Application;
    const-class v2, Landroidx/lifecycle/AndroidViewModel;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 135
    .local v2, "isAndroidViewModel":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 136
    invoke-static {}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->access$getANDROID_VIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->access$getVIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 135
    :goto_0
    nop

    .line 134
    nop

    .line 141
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v3, :cond_1

    .line 142
    iget-object v4, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v4, p1, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    return-object v4

    .line 145
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 149
    nop

    .line 146
    invoke-static {p1, v3, v4}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    goto :goto_1

    .line 153
    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    .line 145
    :goto_1
    nop

    .line 144
    nop

    .line 155
    .local v4, "viewModel":Landroidx/lifecycle/ViewModel;
    nop

    .end local v1    # "application":Landroid/app/Application;
    .end local v2    # "isAndroidViewModel":Z
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "viewModel":Landroidx/lifecycle/ViewModel;
    goto :goto_2

    .line 158
    :cond_3
    iget-object v1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/SavedStateViewModelFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    .line 158
    nop

    .line 157
    move-object v4, v1

    .line 167
    .restart local v4    # "viewModel":Landroidx/lifecycle/ViewModel;
    nop

    .line 128
    .end local v4    # "viewModel":Landroidx/lifecycle/ViewModel;
    :goto_2
    return-object v4

    .line 161
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 162
    nop

    .line 161
    const-string v2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 125
    nop

    .line 124
    const-string v1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "modelClass"    # Ljava/lang/Class;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_4

    .line 181
    nop

    .line 187
    .local v0, "lifecycle":Landroidx/lifecycle/Lifecycle;
    const-class v1, Landroidx/lifecycle/AndroidViewModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 189
    .local v1, "isAndroidViewModel":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 190
    invoke-static {}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->access$getANDROID_VIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->access$getVIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 189
    :goto_0
    nop

    .line 188
    nop

    .line 195
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v2, :cond_2

    .line 198
    iget-object v3, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v3, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    goto :goto_1

    .line 199
    :cond_1
    sget-object v3, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->Companion:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;

    invoke-virtual {v3}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;->getInstance()Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    .line 198
    :goto_1
    return-object v3

    .line 202
    :cond_2
    iget-object v3, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 203
    nop

    .line 204
    nop

    .line 205
    iget-object v4, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->defaultArgs:Landroid/os/Bundle;

    .line 201
    invoke-static {v3, v0, p1, v4}, Landroidx/lifecycle/LegacySavedStateHandleController;->create(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object v3

    .line 200
    nop

    .line 208
    .local v3, "controller":Landroidx/lifecycle/SavedStateHandleController;
    if-eqz v1, :cond_3

    iget-object v4, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz v4, :cond_3

    .line 209
    iget-object v4, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/lifecycle/SavedStateHandleController;->getHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v4}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    goto :goto_2

    .line 211
    :cond_3
    invoke-virtual {v3}, Landroidx/lifecycle/SavedStateHandleController;->getHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v4}, Landroidx/lifecycle/SavedStateViewModelFactory_androidKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    .line 208
    :goto_2
    nop

    .line 207
    nop

    .line 213
    .local v4, "viewModel":Landroidx/lifecycle/ViewModel;
    nop

    .line 214
    nop

    .line 215
    nop

    .line 213
    const-string v5, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {v4, v5, v3}, Landroidx/lifecycle/ViewModel;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    .line 217
    return-object v4

    .line 183
    .end local v0    # "lifecycle":Landroidx/lifecycle/Lifecycle;
    .end local v1    # "isAndroidViewModel":Z
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "controller":Landroidx/lifecycle/SavedStateHandleController;
    .end local v4    # "viewModel":Landroidx/lifecycle/ViewModel;
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 184
    nop

    .line 183
    const-string v1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .param p1, "modelClass"    # Lkotlin/reflect/KClass;
    .param p2, "extras"    # Landroidx/lifecycle/viewmodel/CreationExtras;

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/lifecycle/SavedStateViewModelFactory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public onRequery(Landroidx/lifecycle/ViewModel;)V
    .locals 2
    .param p1, "viewModel"    # Landroidx/lifecycle/ViewModel;

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 243
    nop

    .line 244
    iget-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 245
    iget-object v1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 242
    invoke-static {p1, v0, v1}, Landroidx/lifecycle/LegacySavedStateHandleController;->attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    .line 248
    :cond_0
    return-void
.end method
