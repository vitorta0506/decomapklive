.class Lcom/xiaomi/mipush/sdk/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/u0;->a:Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "clicked activity finish by timeout."

    invoke-static {v0}, Ltf/c;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u0;->a:Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
