.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic c:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/b;->a:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/b;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/fragment/b;->c:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/b;->a:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/b;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/b;->c:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;->a(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;Landroid/view/View;)V

    return-void
.end method
