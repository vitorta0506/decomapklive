.class final Lcom/snapchat/kit/sdk/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/kit/sdk/b;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/b$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/snapchat/kit/sdk/b$b;->a:Landroid/content/Context;

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;->INIT_TYPE_AUTO:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    invoke-static {v0, v1}, Lcom/snapchat/kit/sdk/b;->a(Landroid/content/Context;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)Lcom/snapchat/kit/sdk/b;

    return-void
.end method
