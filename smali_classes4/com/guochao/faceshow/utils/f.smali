.class public final synthetic Lcom/guochao/faceshow/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/utils/f;->a:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/utils/f;->a:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    iget-object v1, p0, Lcom/guochao/faceshow/utils/f;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/PushUtils;->b(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;Landroid/content/Context;)V

    return-void
.end method
