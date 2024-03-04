.class final Lx4/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lx4/d;


# direct methods
.method synthetic constructor <init>(Lx4/d;Lx4/b;)V
    .locals 0

    iput-object p1, p0, Lx4/c;->a:Lx4/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lx4/c;->a:Lx4/d;

    invoke-virtual {v0, p1, p2}, Lx4/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
