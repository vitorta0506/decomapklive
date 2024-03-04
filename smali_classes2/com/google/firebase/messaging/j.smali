.class public final synthetic Lcom/google/firebase/messaging/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/j;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Lt4/g;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/messaging/j;->b:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/messaging/l;->c(Landroid/content/Context;Landroid/content/Intent;Lt4/g;)Lt4/g;

    move-result-object p1

    return-object p1
.end method
