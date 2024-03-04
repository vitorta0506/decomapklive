.class public final synthetic Lcom/google/firebase/messaging/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Lt4/h;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLt4/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/h0;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/firebase/messaging/h0;->b:Z

    iput-object p3, p0, Lcom/google/firebase/messaging/h0;->c:Lt4/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/h0;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/firebase/messaging/h0;->b:Z

    iget-object v2, p0, Lcom/google/firebase/messaging/h0;->c:Lt4/h;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/messaging/i0;->a(Landroid/content/Context;ZLt4/h;)V

    return-void
.end method
