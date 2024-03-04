.class public final Lcom/tencent/tmediacodec/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmediacodec/d/b$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/tencent/tmediacodec/d/b;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tmediacodec/d/b;

    invoke-direct {v0}, Lcom/tencent/tmediacodec/d/b;-><init>()V

    sput-object v0, Lcom/tencent/tmediacodec/d/b;->e:Lcom/tencent/tmediacodec/d/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x780

    .line 2
    iput v0, p0, Lcom/tencent/tmediacodec/d/b;->b:I

    .line 3
    iput v0, p0, Lcom/tencent/tmediacodec/d/b;->c:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/d/b;->a:Z

    .line 5
    sget v0, Lcom/tencent/tmediacodec/d/b$a;->a:I

    iput v0, p0, Lcom/tencent/tmediacodec/d/b;->d:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[initWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/tmediacodec/d/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tmediacodec/d/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reConfigByRealFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/tmediacodec/d/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
