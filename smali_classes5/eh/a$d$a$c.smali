.class Leh/a$d$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/a$d$a;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/a$d$a;


# direct methods
.method constructor <init>(Leh/a$d$a;)V
    .locals 0

    iput-object p1, p0, Leh/a$d$a$c;->a:Leh/a$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leh/a$d$a$c;->a:Leh/a$d$a;

    iget-object v0, v0, Leh/a$d$a;->a:Leh/a$d;

    invoke-virtual {v0}, Leh/a$c;->d()V

    return-void
.end method
