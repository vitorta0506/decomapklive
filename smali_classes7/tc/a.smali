.class public final synthetic Ltc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/linecorp/linesdk/dialog/SendMessageDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc/a;->a:Lcom/linecorp/linesdk/dialog/SendMessageDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltc/a;->a:Lcom/linecorp/linesdk/dialog/SendMessageDialog;

    invoke-static {v0}, Lcom/linecorp/linesdk/dialog/SendMessageDialog;->a(Lcom/linecorp/linesdk/dialog/SendMessageDialog;)V

    return-void
.end method
