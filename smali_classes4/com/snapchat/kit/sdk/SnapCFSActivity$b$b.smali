.class final Lcom/snapchat/kit/sdk/SnapCFSActivity$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/kit/sdk/SnapCFSActivity$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/kit/sdk/SnapCFSActivity;

.field final synthetic b:Lcom/snapchat/kit/sdk/SnapCFSActivity$b;


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/SnapCFSActivity$b;Lcom/snapchat/kit/sdk/SnapCFSActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$b;->b:Lcom/snapchat/kit/sdk/SnapCFSActivity$b;

    iput-object p2, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$b;->a:Lcom/snapchat/kit/sdk/SnapCFSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$b;->a:Lcom/snapchat/kit/sdk/SnapCFSActivity;

    invoke-static {v0}, Lcom/snapchat/kit/sdk/SnapCFSActivity;->a(Lcom/snapchat/kit/sdk/SnapCFSActivity;)V

    return-void
.end method
