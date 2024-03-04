.class public final synthetic Lcom/guochao/faceshow/guild/activity/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/n0;->a:Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/n0;->a:Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->e0(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
