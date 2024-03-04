.class public final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddGroupTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;",
        "",
        "groupId",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;)V",
        "added",
        "",
        "getAdded",
        "()Z",
        "setAdded",
        "(Z)V",
        "getGroupId",
        "()Ljava/lang/String;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "getJob",
        "()Lkotlinx/coroutines/Job;",
        "setJob",
        "(Lkotlinx/coroutines/Job;)V",
        "addGroup",
        "",
        "cancel",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private added:Z

.field private final groupId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private job:Lkotlinx/coroutines/Job;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;


# direct methods
.method public constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .param p1    # Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->groupId:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p3

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method public final addGroup()V
    .locals 6

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask$addGroup$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final cancel()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final getAdded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->added:Z

    return v0
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getJob()Lkotlinx/coroutines/Job;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->job:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final setAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->added:Z

    return-void
.end method

.method public final setJob(Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
