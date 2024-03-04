.class Lcom/xiaomi/push/service/m1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:I

.field public final d:[Landroid/app/Notification$Action;


# direct methods
.method constructor <init>(Ljava/lang/String;JI[Landroid/app/Notification$Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/m1$a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/push/service/m1$a;->b:J

    iput p4, p0, Lcom/xiaomi/push/service/m1$a;->c:I

    iput-object p5, p0, Lcom/xiaomi/push/service/m1$a;->d:[Landroid/app/Notification$Action;

    return-void
.end method
