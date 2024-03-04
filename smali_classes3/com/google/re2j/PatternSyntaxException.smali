.class public Lcom/google/re2j/PatternSyntaxException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final error:Ljava/lang/String;

.field private final input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error parsing regexp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/google/re2j/PatternSyntaxException;->error:Ljava/lang/String;

    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/google/re2j/PatternSyntaxException;->input:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error parsing regexp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/google/re2j/PatternSyntaxException;->error:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/re2j/PatternSyntaxException;->input:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/PatternSyntaxException;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/re2j/PatternSyntaxException;->input:Ljava/lang/String;

    return-object v0
.end method
