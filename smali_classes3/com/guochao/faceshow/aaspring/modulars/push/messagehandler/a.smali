.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/a;->a:Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/a;->a:Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/FirstRechargeDisplayer;->d(Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$PushFirstRechargeData;)V

    return-void
.end method
