.class public final synthetic Lcom/guochao/faceshow/guild/activity/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/e0;->a:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/e0;->a:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->i0(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
