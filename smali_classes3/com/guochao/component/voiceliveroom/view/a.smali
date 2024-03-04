.class public final synthetic Lcom/guochao/component/voiceliveroom/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/a;->a:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/a;->a:Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;->a(Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatControllerView;Ljava/util/ArrayList;)V

    return-void
.end method
