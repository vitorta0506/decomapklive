.class public interface abstract Lcom/google/api/client/http/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/google/api/client/http/e$a;

.field public static final b:Lcom/google/api/client/http/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/http/e$a$a;

    invoke-direct {v0}, Lcom/google/api/client/http/e$a$a;-><init>()V

    sput-object v0, Lcom/google/api/client/http/e$a;->a:Lcom/google/api/client/http/e$a;

    .line 2
    new-instance v0, Lcom/google/api/client/http/e$a$b;

    invoke-direct {v0}, Lcom/google/api/client/http/e$a$b;-><init>()V

    sput-object v0, Lcom/google/api/client/http/e$a;->b:Lcom/google/api/client/http/e$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/api/client/http/p;)Z
.end method
