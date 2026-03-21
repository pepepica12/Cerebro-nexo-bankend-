.class public Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.super Ljava/lang/Object;
.source "ViewModelProvider.android.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ViewModelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewInstanceFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;

.field public static final VIEW_MODEL_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

.field public static _instance:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->Companion:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;

    .line 223
    sget-object v0, Landroidx/lifecycle/ViewModelProvider;->VIEW_MODEL_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    sput-object v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->VIEW_MODEL_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public static final synthetic access$get_instance$cp()Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
    .locals 1

    .line 171
    sget-object v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->_instance:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    return-object v0
.end method

.method public static final synthetic access$set_instance$cp(Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;)V
    .locals 0
    .param p0, "<set-?>"    # Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 171
    sput-object p0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->_instance:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .param p1, "modelClass"    # Ljava/lang/Class;

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v0, Landroidx/lifecycle/viewmodel/internal/JvmViewModelProviders;->INSTANCE:Landroidx/lifecycle/viewmodel/internal/JvmViewModelProviders;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/viewmodel/internal/JvmViewModelProviders;->createViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .param p1, "modelClass"    # Ljava/lang/Class;
    .param p2, "extras"    # Landroidx/lifecycle/viewmodel/CreationExtras;

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method

.method public create(Lkotlin/reflect/KClass;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .param p1, "modelClass"    # Lkotlin/reflect/KClass;
    .param p2, "extras"    # Landroidx/lifecycle/viewmodel/CreationExtras;

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method
