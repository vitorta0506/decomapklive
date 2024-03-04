.class public final synthetic Lcom/facebook/login/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/h;->a:Lcom/facebook/login/DeviceAuthDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/h;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v0}, Lcom/facebook/login/DeviceAuthDialog;->V1(Lcom/facebook/login/DeviceAuthDialog;)V

    return-void
.end method
