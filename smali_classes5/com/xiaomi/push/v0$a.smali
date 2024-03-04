.class public Lcom/xiaomi/push/v0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/xiaomi/push/v0$c;

.field public static final b:Lcom/xiaomi/push/v0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/v0$c;

    invoke-direct {v0}, Lcom/xiaomi/push/v0$c;-><init>()V

    sput-object v0, Lcom/xiaomi/push/v0$a;->a:Lcom/xiaomi/push/v0$c;

    new-instance v0, Lcom/xiaomi/push/v0$d;

    invoke-direct {v0}, Lcom/xiaomi/push/v0$d;-><init>()V

    sput-object v0, Lcom/xiaomi/push/v0$a;->b:Lcom/xiaomi/push/v0$d;

    return-void
.end method

.method public static a([B)[B
    .locals 1

    sget-object v0, Lcom/xiaomi/push/v0$a;->b:Lcom/xiaomi/push/v0$d;

    invoke-static {p0, v0}, Lcom/xiaomi/push/v0$a;->b([BLcom/xiaomi/push/v0$b;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([BLcom/xiaomi/push/v0$b;)[B
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/push/v0;->f([B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/xiaomi/push/v0;->e([B)Lcom/xiaomi/push/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/v0;->a(Lcom/xiaomi/push/v0;)B

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/push/v0;->a(Lcom/xiaomi/push/v0;)B

    move-result v0

    invoke-interface {p1}, Lcom/xiaomi/push/v0$b;->a()B

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/v0;->h(Lcom/xiaomi/push/v0;)[B

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/push/v0;->b(Lcom/xiaomi/push/v0;)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/xiaomi/push/v0$b;->a([BI)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/push/v0;->h(Lcom/xiaomi/push/v0;)[B

    move-result-object p0

    :cond_2
    return-object p0
.end method
