.class public Lcom/xiaomi/push/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/push/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/a1$a;
    }
.end annotation


# static fields
.field public static g:Z = false


# instance fields
.field private a:Ljava/text/SimpleDateFormat;

.field private b:Lcom/xiaomi/push/c1;

.field private c:Lcom/xiaomi/push/a1$a;

.field private d:Lcom/xiaomi/push/a1$a;

.field private e:Lcom/xiaomi/push/e1;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/c1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/a1;->a:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/a1;->c:Lcom/xiaomi/push/a1$a;

    iput-object v0, p0, Lcom/xiaomi/push/a1;->d:Lcom/xiaomi/push/a1$a;

    iput-object v0, p0, Lcom/xiaomi/push/a1;->e:Lcom/xiaomi/push/e1;

    const-string v0, "[Slim] "

    iput-object v0, p0, Lcom/xiaomi/push/a1;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/a1;->b:Lcom/xiaomi/push/c1;

    invoke-direct {p0}, Lcom/xiaomi/push/a1;->d()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/a1;)Lcom/xiaomi/push/a1$a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/a1;->c:Lcom/xiaomi/push/a1$a;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/push/a1;)Lcom/xiaomi/push/c1;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/a1;->b:Lcom/xiaomi/push/c1;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/push/a1;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/a1;->a:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private d()V
    .locals 2

    new-instance v0, Lcom/xiaomi/push/a1$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/a1$a;-><init>(Lcom/xiaomi/push/a1;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/a1;->c:Lcom/xiaomi/push/a1$a;

    new-instance v0, Lcom/xiaomi/push/a1$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/a1$a;-><init>(Lcom/xiaomi/push/a1;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/a1;->d:Lcom/xiaomi/push/a1$a;

    iget-object v0, p0, Lcom/xiaomi/push/a1;->b:Lcom/xiaomi/push/c1;

    iget-object v1, p0, Lcom/xiaomi/push/a1;->c:Lcom/xiaomi/push/a1$a;

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/push/c1;->i(Lcom/xiaomi/push/g1;Lcom/xiaomi/push/n1;)V

    iget-object v0, p0, Lcom/xiaomi/push/a1;->b:Lcom/xiaomi/push/c1;

    iget-object v1, p0, Lcom/xiaomi/push/a1;->d:Lcom/xiaomi/push/a1$a;

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/push/c1;->v(Lcom/xiaomi/push/g1;Lcom/xiaomi/push/n1;)V

    new-instance v0, Lcom/xiaomi/push/b1;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/b1;-><init>(Lcom/xiaomi/push/a1;)V

    iput-object v0, p0, Lcom/xiaomi/push/a1;->e:Lcom/xiaomi/push/e1;

    return-void
.end method
