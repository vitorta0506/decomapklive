.class public final synthetic Lcom/guochao/component/voiceliveroom/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/f;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/adapter/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/adapter/a;->a:Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;->e(Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
