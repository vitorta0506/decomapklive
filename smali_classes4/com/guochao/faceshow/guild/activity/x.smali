.class public final synthetic Lcom/guochao/faceshow/guild/activity/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/x;->a:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/x;->a:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->d0(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Ljava/lang/Boolean;)V

    return-void
.end method
