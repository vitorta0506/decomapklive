.class Lbh/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbh/a$a;


# direct methods
.method constructor <init>(Lbh/a$a;)V
    .locals 0

    iput-object p1, p0, Lbh/a$a$a;->a:Lbh/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbh/a$a$a;->a:Lbh/a$a;

    invoke-static {v0}, Lbh/a$a;->b(Lbh/a$a;)V

    return-void
.end method
