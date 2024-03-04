.class final Lcom/snapchat/kit/sdk/SnapCFSActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/kit/sdk/SnapCFSActivity$b;->a()V
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

    iput-object p1, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$a;->b:Lcom/snapchat/kit/sdk/SnapCFSActivity$b;

    iput-object p2, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$a;->a:Lcom/snapchat/kit/sdk/SnapCFSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$a;->a:Lcom/snapchat/kit/sdk/SnapCFSActivity;

    invoke-static {v0}, Lcom/snapchat/kit/sdk/SnapCFSActivity;->a(Lcom/snapchat/kit/sdk/SnapCFSActivity;)V

    .line 2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b$a;->a:Lcom/snapchat/kit/sdk/SnapCFSActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
