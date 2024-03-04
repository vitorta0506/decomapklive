.class public final synthetic Lcom/guochao/component/voiceliveroom/fragment/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/g0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/g0;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/g0;->a:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/g0;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->a(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
