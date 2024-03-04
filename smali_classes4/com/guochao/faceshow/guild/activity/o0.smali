.class public final synthetic Lcom/guochao/faceshow/guild/activity/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/o0;->a:Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/o0;->a:Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;->g0(Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;Ljava/lang/Integer;)V

    return-void
.end method
