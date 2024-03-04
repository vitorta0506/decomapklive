.class public abstract Ln1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/firebase/encoders/proto/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/encoders/proto/e;->a()Lcom/google/firebase/encoders/proto/e$a;

    move-result-object v0

    sget-object v1, Ln1/a;->a:Le6/a;

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/proto/e$a;->d(Le6/a;)Lcom/google/firebase/encoders/proto/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/encoders/proto/e$a;->c()Lcom/google/firebase/encoders/proto/e;

    move-result-object v0

    sput-object v0, Ln1/l;->a:Lcom/google/firebase/encoders/proto/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 1

    sget-object v0, Ln1/l;->a:Lcom/google/firebase/encoders/proto/e;

    invoke-virtual {v0, p0}, Lcom/google/firebase/encoders/proto/e;->c(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Lr1/a;
.end method
