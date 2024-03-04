.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u000e\u0008\u0000\u0010\u0001\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "invoke",
        "()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "com/guochao/faceshow/aaspring/base/mvvm/MvvmUtilsKt$lazyViewModel$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $factory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $this_lazyViewModel:Landroidx/lifecycle/ViewModelStoreOwner;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;->$this_lazyViewModel:Landroidx/lifecycle/ViewModelStoreOwner;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;->$factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-class v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;->$this_lazyViewModel:Landroidx/lifecycle/ViewModelStoreOwner;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;->$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;->$factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v3, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    goto :goto_0

    :cond_0
    new-instance v4, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v4, v1, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    move-object v3, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v3, v2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v3, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    :goto_1
    const-string v1, "null cannot be cast to non-null type com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;->invoke()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    move-result-object v0

    return-object v0
.end method
