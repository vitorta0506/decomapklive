.class public Lcom/xiaomi/push/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lcom/xiaomi/push/t2;

.field private c:Lcom/xiaomi/push/p2;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/er;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/l2;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Lcom/xiaomi/push/t2;

    invoke-direct {v1, v0}, Lcom/xiaomi/push/t2;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/xiaomi/push/l2;->b:Lcom/xiaomi/push/t2;

    invoke-interface {p1, v1}, Lcom/xiaomi/push/er;->a(Lcom/xiaomi/push/v2;)Lcom/xiaomi/push/p2;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/l2;->c:Lcom/xiaomi/push/p2;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/ef;)[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/l2;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/xiaomi/push/l2;->c:Lcom/xiaomi/push/p2;

    invoke-interface {p1, v0}, Lcom/xiaomi/push/ef;->b(Lcom/xiaomi/push/p2;)V

    iget-object p1, p0, Lcom/xiaomi/push/l2;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
