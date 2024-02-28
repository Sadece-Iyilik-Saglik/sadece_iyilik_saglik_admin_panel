import '../const/enum/question_enum.dart';
import '../model/exam_model.dart';
import '../model/question_model.dart';

class ExamViewModel {
  static List<Exam> allExams = [
    Exam(name: "Test 1", subtitle: "First Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 2", subtitle: "Second Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 3", subtitle: "Third Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 4", subtitle: "Fourth Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 5", subtitle: "Fifth Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 6", subtitle: "Sixth Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 7", subtitle: "Seventh Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 8", subtitle: "Eighth Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 9", subtitle: "Nineth Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 10", subtitle: "Tenth Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 11", subtitle: "Eleven Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Quisque aliquet arcu sed velit cursus venenatis ac non ligula. Pellentesque ac ullamcorper turpis, sed fringilla tellus. Sed et tellus odio. Vivamus quis suscipit urna. Proin sed rhoncus velit, vitae condimentum leo. Maecenas pulvinar turpis vitae tempus sagittis?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2)
    ]),
    Exam(name: "Test 12", subtitle: "Twelve Test of Anatomy", questions: [
      Question(
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit posuere nisl nec efficitur. Curabitur suscipit posuere nisl nec efficitur ?",
          options: [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            "Vivamus sit amet lobortis erat. Vestibulum at iaculis magna, id imperdiet sem.",
            "Donec feugiat tincidunt diam ac fermentum. Ut semper eros ac rhoncus vestibulum.",
            "Nulla facilisi. Nunc finibus vel augue in luctus.",
            "Ut semper dignissim dignissim. Integer eget eros tellus."
          ],
          trueOptionIndex: 2),
    ]),
  ];
  static void addExam(Exam exam) {
    allExams.add(exam);
  }
}
