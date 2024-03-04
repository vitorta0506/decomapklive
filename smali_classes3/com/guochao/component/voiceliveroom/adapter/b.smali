.class public final synthetic Lcom/guochao/component/voiceliveroom/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/f;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/adapter/b;->a:Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/adapter/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/adapter/b;->a:Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/adapter/b;->b:Ljava/util/List;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;->e(Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomUGCAdapter;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
