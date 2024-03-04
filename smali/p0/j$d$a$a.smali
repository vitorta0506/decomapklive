.class Lp0/j$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp0/j$d$a;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lp0/j$d$a;


# direct methods
.method constructor <init>(Lp0/j$d$a;Z)V
    .locals 0

    iput-object p1, p0, Lp0/j$d$a$a;->b:Lp0/j$d$a;

    iput-boolean p2, p0, Lp0/j$d$a$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lp0/j$d$a$a;->b:Lp0/j$d$a;

    iget-boolean v1, p0, Lp0/j$d$a$a;->a:Z

    invoke-virtual {v0, v1}, Lp0/j$d$a;->a(Z)V

    return-void
.end method
